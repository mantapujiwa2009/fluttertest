import 'package:flutter/material.dart';

class CustomInfo extends StatelessWidget {
  final String title;
  final String details;
  final IconData icon;
  const CustomInfo({super.key, required this.title, required this.details, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(end: 10),
          child: Icon(icon, size: 30, color: Colors.white,)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, 
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white
            ),),
            Text(details, 
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.grey
            ),)
          ],
        )
      ],
    );
  }
}