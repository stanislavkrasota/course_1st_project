import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget template;

  const GradientContainer(this.template, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepOrange, Colors.amber],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: template,
    );
  }
}
