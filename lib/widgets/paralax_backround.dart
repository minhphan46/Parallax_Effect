import 'package:flutter/material.dart';

class ParalaxBackround extends StatelessWidget {
  final double? top;
  final String asset;

  ParalaxBackround({super.key, required this.asset, this.top});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: SizedBox(
        height: 350,
        child: Image(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
