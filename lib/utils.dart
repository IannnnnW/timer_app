import 'package:flutter/material.dart';

class ProductivityButton extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  const ProductivityButton({super.key, required this.color, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      color: color,
      minWidth: size,
      child: Text(text, 
      style:const TextStyle(color: Colors.white)
      )
    );
  }
}
