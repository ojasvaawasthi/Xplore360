import 'package:firebase_storage/firebase_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PdfDocument {
  final String title;
  final String downloadUrl;

  PdfDocument({
    required this.title,
    required this.downloadUrl,
  });
}

Future<List<Map<String, dynamic>>> getPdfList() async {
  final db = FirebaseFirestore.instance;
  return db.collection("logical reasoning").get().then(
    (querySnapshot) {
      print("Successfully completed");
      final List<Map<String, dynamic>> result = [];
      for (var docSnapshot in querySnapshot.docs) {
        final data = docSnapshot.data();
        result.add(data);
        print('${docSnapshot.id} => ${docSnapshot.data()}');
      }

      return result;
    },
    onError: (e) => print("Error completing: $e"),
  );
}

void downloadAndOpenPdf(BuildContext context, String url) async {
  print(url);
  try {
    final dio = Dio();
    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/$url';

    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing dialog by tapping outside
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Downloading PDF'),
          content: LinearProgressIndicator(),
        );
      },
    );

    await dio.download(
      url,
      filePath,
      onReceiveProgress: (received, total) {
        // Calculate download progress percentage
        double progress = received / total * 100;
        print('Downloading progress: $progress%');
      },
    );

    Navigator.pop(context); // Dismiss the progress dialog

    await OpenFile.open(filePath);
  } catch (error) {
    print('Error downloading PDF: $error');
    // Handle errors appropriately (e.g., show snackbar or dialog)
  }
}


class LogicalReasoning extends StatefulWidget {
  const LogicalReasoning({super.key});

  @override
  State<LogicalReasoning> createState() => _LogicalReasoningState();
}

class _LogicalReasoningState extends State<LogicalReasoning> {
  Future<List<Map<String, dynamic>>>? _pdfList;

  @override
  void initState() {
    super.initState();
    _pdfList = getPdfList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogicalReasoning'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _pdfList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final pdfs = snapshot.data!;
            return ListView.builder(
              itemCount: pdfs.length,
              itemBuilder: (context, index) {
                final pdf = pdfs[index];
                print("URl ${pdf["downloadUrl"]}");
                return ListTile(
                  title: Text(pdf["title"],style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.picture_as_pdf),
                  onTap: () => downloadAndOpenPdf(context, pdf["downloadUrl"]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
