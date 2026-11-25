import 'package:flutter/material.dart';
import 'package:lb/lb.dart';


class CardWidget extends StatelessWidget {

  final double widht;
  final double height;
  final String text_head;
  final String text_desc;
  final String img_path;
  final VoidCallback onTap;
  final double button_padding;



  const new({
    super.key,
    required this.widht,
    required this.height,
    required this.text_head,
    required this.text_desc,
    required this.img_path,
    required this.onTap,
    required this.button_padding,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.Accent,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 43, right: 21, bottom: 19),
                child: Image.asset(img_path,fit: BoxFit.fill,),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(left: 24,top: 30),
                child: Text(
                  text_head,
                  style: AppTypography.caption2_bold.copyWith(color: AppColors.White),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 24,top: 8),
                child: SizedBox(
                  width: 157,
                  child: Text(
                    text_desc,
                    style: AppTypography.caption2.copyWith(color: AppColors.White),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 24,top: button_padding),
                child: InkWell(
                  onTap: onTap,
                  child: Icon(Icons.arrow_forward,color: AppColors.White,),
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}


































