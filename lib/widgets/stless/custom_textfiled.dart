import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';

class CustomTextField extends StatelessWidget {
  final height;
  final content;
  final hintText;

  const CustomTextField({Key? key, this.height, this.content, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //box
        Container(
            margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
            alignment: Alignment.center,
            height: height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: DarkTheme.white,
                  // color: AppColor.blueMain
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: content,
                      border: InputBorder.none,
                      hintStyle: TxtStyle.heading4)),
            )),
        Container(
          color: DarkTheme.darkerBackground,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(content, style: TxtStyle.heading4Light),
          ),
        )
      ],
    );
  }
}
