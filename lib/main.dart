import 'package:flutter/material.dart';
import 'package:flutter_shimmer_effect_20241115/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shimmer Effect"),
        ),
        body: const ShimmerEffect(),
      ),
    );
  }
}
