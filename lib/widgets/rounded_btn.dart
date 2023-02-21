import 'package:flutter/material.dart';

class roundedButton extends StatelessWidget {
  final String btn_name;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textstyle;
  final VoidCallback? callback;

  roundedButton(
      {required this.btn_name,
      this.icon,
      this.bgcolor = Colors.blue,
      this.textstyle,
      this.callback}) {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Text(
                  btn_name,
                  style: textstyle,
                ),
              ],
            )
          : Text(
              btn_name,
              style: textstyle,
            ),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        shadowColor: bgcolor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(12),
        )),
      ),
    );
  }
}
