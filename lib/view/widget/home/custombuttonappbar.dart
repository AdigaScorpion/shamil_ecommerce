import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';

class CustomBottonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbotton;
  final IconData icondata;
  final bool active;

  const CustomBottonAppBar({
    super.key,
    this.onPressed,
    required this.textbotton,
    required this.icondata,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icondata,
                color:
                    active == true ? Appcolor.primaryColor : Color(0xff616161)),
            Text(
              textbotton,
              style: TextStyle(
                  color: active == true
                      ? Appcolor.primaryColor
                      : Color(0xff616161)),
            )
          ],
        ));
  }
}
