import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  final String description;
  final String imagePath;
  Pages({this.description, this.imagePath, Key key}) : super(key: key);
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Image
        Expanded(
          child: Image(
            image: AssetImage(widget.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        //Description
        Container(
          alignment: Alignment.center,
          child: Text(
            widget.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
