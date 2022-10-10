import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class CustomBottonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomBottonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 14),
        color: Appcolor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
