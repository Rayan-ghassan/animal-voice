import 'package:flutter/material.dart';



class ButtonAnimals extends StatelessWidget {
  const ButtonAnimals({super.key, required this.name, required this.icon, required this.color, required this.onClick});

  final String name;
  final String icon;
  final Color color;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: ElevatedButton.icon(onPressed: (){ onClick();},
        style: ElevatedButton.styleFrom(
          backgroundColor: color
        ),
         icon: Expanded(child: Image(image: AssetImage(icon))), 
         label: Text(name)),
      ),
    );
  }
}