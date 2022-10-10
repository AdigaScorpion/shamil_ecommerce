import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/constant/imageasset.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logo,
      height: 175,
    );
  }
}
