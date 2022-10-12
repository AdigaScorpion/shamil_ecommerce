import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressednotification;
  final void Function()? onPressedsearch;
  const CustomAppBar(
      {super.key,
      required this.titleappbar,
      this.onPressednotification,
      this.onPressedsearch});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        margin: EdgeInsets.only(top: 10),
        child: Row(children: [
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(
                  icon: Icon(Icons.search_outlined),
                  onPressed: onPressedsearch),
              hintText: titleappbar,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.grey[350],
            ),
          )),
          SizedBox(width: 10),
          Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10)),
            width: 55,
            child: IconButton(
                alignment: Alignment.center,
                onPressed: onPressednotification,
                icon: Icon(Icons.notifications_active_outlined, size: 30)),
          )
        ]));
  }
}
