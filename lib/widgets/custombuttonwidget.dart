import 'package:flutter/material.dart';
import 'package:lb/lb.dart';


class ButtonWidget extends StatelessWidget {


  final double widht;
  final double height;
  final String text;
  final VoidCallback onTap;



  const ButtonWidget({
    super.key,
    required this.widht,
    required this.height,
    required this.text,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widht,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.Accent),
          foregroundColor: WidgetStateProperty.all(AppColors.White)
        ),
        onPressed: onTap,
        child: Align(
          alignment: AlignmentGeometry.center,
          child: Text(
            text,
            style: AppTypography.caption_semibold.copyWith(color: AppColors.White),
          ),
        )
         
        ),
    );
  }
}


























