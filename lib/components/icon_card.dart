import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui_flutter/constants.dart';

class IconCard extends StatelessWidget {
  IconCard({this.iconPath, this.onTap});

  final String iconPath;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        // margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        width: 62.0,
        height: 62.0,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22.0,
              color: kPrimaryColor.withOpacity(0.22),
            ),
          ],
        ),
        child: SvgPicture.asset(iconPath),
      ),
    );
  }
}