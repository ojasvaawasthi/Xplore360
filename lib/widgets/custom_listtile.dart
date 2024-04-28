import 'package:flutter/material.dart';
class CustomListTile extends StatelessWidget{
final String title;
final Function onTap;
var borderRadius = const BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));

CustomListTile({
  required this.title,
  required this.onTap,
  required this.borderRadius,
});
@override
  Widget build(BuildContext context) {
    // TODO: implement build
   return ListTile(shape: RoundedRectangleBorder(borderRadius: borderRadius),
      selectedTileColor: Colors.grey[300],
   
      onTap: () {onTap();},
      leading: Icon(Icons.picture_as_pdf_outlined),
      title: Text(title),);
  }
}