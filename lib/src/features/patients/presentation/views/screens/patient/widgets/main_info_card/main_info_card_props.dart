import 'package:flutter/material.dart';

class MainInfoCardProps {
  const MainInfoCardProps(
      {required this.fullname, required this.phone, this.onPressed});

  final String fullname;
  final String phone;
  final VoidCallback? onPressed;
}
