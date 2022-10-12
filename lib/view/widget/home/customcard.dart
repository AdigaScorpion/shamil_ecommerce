import 'package:flutter/material.dart';
import 'package:shamil_ecommerce/core/constant/color.dart';

class CustumCard extends StatelessWidget {
  final String title;
  final String body;
  const CustumCard({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Stack(children: [
          Container(
              alignment: Alignment.center,
              child: ListTile(
                  title: Text(title,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20)),
                  subtitle: Text(
                    body,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
              height: 150,
              decoration: BoxDecoration(
                color: Appcolor.primaryColor,
                borderRadius: BorderRadius.circular(10),
              )),
          Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    color: Appcolor.thierdColor,
                    borderRadius: BorderRadius.circular(160)),
              ))
        ]));
  }
}
