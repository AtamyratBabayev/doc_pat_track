import 'package:flutter/cupertino.dart';

class WidthSpacer extends StatelessWidget {
  const WidthSpacer(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
