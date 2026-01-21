import 'package:flutter/material.dart';

class RedBox extends StatelessWidget{
  const RedBox({super.key});
  
  @override
  Widget build(BuildContext context){
      return DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.red,
          )
      );
  }
}