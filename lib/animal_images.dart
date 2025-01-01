
import 'package:flutter/material.dart';

class AnimalImages extends StatelessWidget {
  const AnimalImages({super.key, required this.imagePath, });


  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 5,color: Colors.brown),
        image:DecorationImage(image: AssetImage(imagePath),
        fit: BoxFit.fill
        
        ),
        
      ),

    );
  }
}