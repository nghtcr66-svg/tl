import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lb/lb.dart';


class Custominputwidget extends StatefulWidget {

  final String hint_text;
  final bool hide;
  final TextEditingController controller;





  const Custominputwidget({
    super.key,
    required this.hint_text,
    required this.hide,
    required this.controller,
    });

  @override
  State<Custominputwidget> createState() => _CustominputwidgetState();
}

class _CustominputwidgetState extends State<Custominputwidget> {
  bool _isHide = false;



  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: _isHide,
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.hide ? InkWell(
            onTap: () => setState(() => _isHide = !_isHide,
            ), child: Icon(_isHide ? Icons.visibility_off : Icons.visibility, color: AppColors.Black,),
            ): null,
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




















































