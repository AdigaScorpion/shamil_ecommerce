import 'package:flutter/Material.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';

class CustomBotton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomBotton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        color: Appcolor.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 14),
        textColor: Colors.grey[800],
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
