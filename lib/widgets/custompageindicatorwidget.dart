import 'package:flutter/material.dart';
import 'package:lb/lb.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class Custompageindicatorwidget extends StatelessWidget {


  
  const new({
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(    
   controller: PageController(),    
   count:  3,    
   axisDirection: Axis.horizontal,    
   effect:  SlideEffect(      
      dotWidth:  10,    
      dotHeight:  11,    
      paintStyle:  PaintingStyle.stroke,    
      strokeWidth:  1.5,    
      dotColor:  AppColors.Accent_inactive,    
      activeDotColor:  AppColors.Accent    
  ), 
);
  }
}






























