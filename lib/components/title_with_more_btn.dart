import 'package:flutter/material.dart';
import 'package:plant_ui_flutter/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  TitleWithMoreBtn({this.title, this.onPressed});

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(
            title: title,
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: kPrimaryColor,
            child: Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  TitleWithCustomUnderline({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            color: kPrimaryColor.withOpacity(0.2),
            height: 7.0,
            margin: EdgeInsets.only(right: 5.0),
          ),
        ),
      ],
    );
  }
}
