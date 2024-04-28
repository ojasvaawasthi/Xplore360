import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

class video_lecture extends StatelessWidget {
  const video_lecture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        } , icon: Icon(Icons.arrow_back_ios_new))
        ,title: Text("Video Lectures",style: TextStyle(fontWeight: FontWeight.bold),

      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      ),
      body: categories(),
    
      ),
      
    );
  }
}
class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 400,
                height: 200,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                // color: Colors.amberAccent,
                decoration: BoxDecoration(
                  
                  image: DecorationImage(image: AssetImage("assets/68278.png")),
                  
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () async {
                  const playlisturl='https://youtube.com/playlist?list=PLqNQNbMH55vE7vfaL6Lt7aXs0fCtSX6c_&si=u0uP8_q4VS5hmO-D';
                  if(await canLaunchUrlString(playlisturl)){
                    await launchUrlString(playlisturl);

                  }
                  else
                  {
                    throw 'could not  launch $playlisturl ';
                  }
                    },
                child: Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/imeg/Logical Reasoning.png')),
                  ),
                ),
              ),
              InkWell(
                onTap: () async{
                  const playlisturl2='https://youtube.com/playlist?list=PLqNQNbMH55vF2eTsoII7SqeXbi-gTCALt&si=E-eOnFrksGvu9nDp';
                  if (await launchUrlString(playlisturl2)){
                    await launchUrlString(playlisturl2);
                  }
                  else{
                    throw 'could not launch $playlisturl2';
                  }
                  
                },
                child: Container(
                  width: 200,
                  height: 200,
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/imeg/Verbal Ability.png'))
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () async{
                  const playlisturl3='https://youtube.com/playlist?list=PLqNQNbMH55vEAKQF9nXFIhgU37NMg49W1&si=hzb6djKAwsJQUmUX';
                  if(await launchUrlString(playlisturl3)){
                    launchUrlString(playlisturl3);
                  }
                  else{
                    throw'could not open';
                  }
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/imeg/Soft Skills.png'))
                  ),
                ),
              ),
              InkWell(
                onTap: () async{
                  const playlisturl4='https://youtube.com/playlist?list=PLqNQNbMH55vEIiSh0UF1QwS-1wneh4O6V&si=ACuneGaXWwXpGHXz';
                  if(await launchUrlString(playlisturl4)){
                    launchUrlString(playlisturl4);

                  }
                  else
                  {
                    throw'could not open ';
                  }
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/imeg/Quants.png'))
                  ),
                ),
              )
            ],
          )
          
        ],
        
      ),
    );
  }
}