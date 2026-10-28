import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  const CustomAvatar({super.key, required this.backgroundColor, required this.foregroundColor});


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
    CircleAvatar(radius: 300,
                backgroundColor: backgroundColor,
                child: Icon(Icons.person, 
                size: 200,),
                foregroundColor: foregroundColor,
                ),
                Positioned(child: 
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.camera_alt_outlined, size: 40, color: Colors.black,),
                ),
                bottom: 0,
                right: 0,)                    
      ],
    );
    

  }
}