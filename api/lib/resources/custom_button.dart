import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title, subtitle;
  final Color btnColor;
  final VoidCallback onTapFun;
  const MyButton(
      {required this.title,
      required this.subtitle,
      required this.onTapFun,
      required this.btnColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          onTapFun();
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: btnColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(subtitle,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
