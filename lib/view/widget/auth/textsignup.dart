import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class TextSignUp extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() ontap;
  const TextSignUp({
    super.key,
    required this.textone,
    required this.texttwo,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: ontap,
          child: Text(
            texttwo,
            style: const TextStyle(
                color: Appcolor.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
