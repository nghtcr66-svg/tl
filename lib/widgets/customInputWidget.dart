import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lb/lb.dart';


class Custominputwidget extends StatefulWidget {

  final String hint_text;
  final bool obscure_text;
  final TextEditingController controller;
  final Widget? suffixIcon;





  const Custominputwidget({
    super.key,
    required this.hint_text,
    required this.obscure_text,
    required this.controller,
    this.suffixIcon
    });

  @override
  State<Custominputwidget> createState() => _CustominputwidgetState();
}

class _CustominputwidgetState extends State<Custominputwidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: widget.obscure_text,
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          counterText: "",
          hintText: widget.hint_text,
          //эту часть я оченб долго вспоминал
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.Accent)
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.Accent)
          )

        ),
    );
  }
}




















































