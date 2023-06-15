import 'dart:io';

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'http_override.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
