import 'package:flutter/cupertino.dart';

class HeightSpacer extends StatelessWidget {
  const HeightSpacer(this.height, {super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
