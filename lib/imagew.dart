import 'dart:ui';

import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Asset Image Example'),
        ),
        body: Center(
          child: Image.asset('assets/google.png'),
        ),

    );
  }
}
