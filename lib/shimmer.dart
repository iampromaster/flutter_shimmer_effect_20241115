import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatefulWidget {
  const ShimmerEffect({super.key});

  @override
  State<ShimmerEffect> createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<ShimmerEffect> {
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        setState(
          () {
            _isLoading = false;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: _isLoading ? _buildShimmerEffect() : _buildContent(),
    );
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            color: Colors.white,
          ),
          const SizedBox(height: 16),
          Container(
            width: 150.0,
            height: 20.0,
            color: Colors.white,
          ),
          const SizedBox(height: 16),
          Container(
            width: 100.0,
            height: 20.0,
            color: Colors.white,
          ),
          const SizedBox(height: 16),
          Container(
            width: 200.0,
            height: 18.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("images/mount.jpg",
            fit: BoxFit.cover, width: double.infinity, height: 200),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Mountain Serenity",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text("Discover the beauty of nature"),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Walk Through the Mountains',
        ),
      ],
    );
  }
}
