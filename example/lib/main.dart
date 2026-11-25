import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:lb/widgets/custombuttonwidget.dart';
import 'package:lb/widgets/customcardwidget.dart';
import 'package:lb/widgets/customInputWidget.dart';
import 'package:lb/widgets/custompageindicatorwidget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Storybook(
        stories: [
          Story(
            name: 'Primary_button',
            builder: (context) => 
              Scaffold(
              body: Center(
                child: ButtonWidget(
                  widht: 210,
                  height: 58,
                  text: "Let’s Combat!",
                  onTap: (){}
              )
             )
            ),
          ),
          Story(
            name: 'Card',
            builder: (context) => 
              Scaffold(
              body: Center(
                child: CardWidget(
                  widht: 315,
                  height: 169,
                  text_head: "Schedule",
                  text_desc: "Easily schedule event/games then find like minded players for battle. You up for it?",
                  img_path: "packages/lb/assets/images/6.png",
                  onTap: (){},
                  button_padding: 30
                  )
             )
            ),
          ),
          Story(
            name: 'Input 1',
            builder: (context) => 
              Scaffold(
              body: Center(
                child: Custominputwidget(
                  controller: TextEditingController(),
                  hint_text: "Full name",
                  obscure_text: false,
                  )
             )
            ),
          ),
          Story(
            name: 'Pagination',
            builder: (context) => 
              Scaffold(
              body: Center(
                child: Custompageindicatorwidget()
             )
            ),
          ),
        ],
      );
}
