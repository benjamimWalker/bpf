import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final List<Widget> buttons;
  final double imageScale;

  const ControlScreen({
    @required this.imagePath,
    @required this.title,
    @required this.buttons,
    this.imageScale = 0.8,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff14A18A),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Expanded(
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(imagePath,
                      scale: imageScale, color: Colors.white),
                  Text(title,
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 23,
                        color: Colors.white,
                      )),
                ]),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height / 1.8,
          //  padding: EdgeInsets.only(bottom: 60, top: 50, left: 25, right: 25),
          // child: Column(
          //   mainAxisSize: MainAxisSize.max,
          //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [...buttons],
          // ),
          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 60, top: 50, left: 25, right: 25),
            itemBuilder: (context, index) => Center(child: buttons[index]),
            itemCount: buttons.length,
            separatorBuilder: (context, _) => SizedBox(
              height: 20,
            ),
          ),
        ),
      ]),
    );
  }
}
