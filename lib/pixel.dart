// ignore_for_file: prefer_typing_uninitialized_variables, duplicate_ignore

import 'package:flutter/material.dart';

class MyPixel extends StatelessWidget {

  



  const MyPixel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            index.toString(),
          ),
        ),
      ),
    );
  }
}
