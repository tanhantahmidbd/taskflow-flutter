import'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget{
  const AppElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height = 56,
  });

  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double height;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      )
    );
  }
}