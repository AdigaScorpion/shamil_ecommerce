import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class CustomTextBody extends StatelessWidget {
  final String text;
  const CustomTextBody({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(color: Appcolor.grey));
  }
}
