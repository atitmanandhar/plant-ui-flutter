import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui_flutter/components/icon_card.dart';
import 'package:plant_ui_flutter/constants.dart';
import 'package:plant_ui_flutter/models/plant.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({this.context, this.plantDetails});

  final dynamic context;
  final Plant plantDetails;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding * 3,
                      horizontal: kDefaultPadding / 2,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon:
                                SvgPicture.asset('assets/icons/back_arrow.svg'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Spacer(),
                        IconCard(
                          iconPath: 'assets/icons/sun.svg',
                          onTap: () {},
                        ),
                        Spacer(),
                        IconCard(
                          iconPath: 'assets/icons/icon_2.svg',
                          onTap: () {},
                        ),
                        Spacer(),
                        IconCard(
                          iconPath: 'assets/icons/icon_3.svg',
                          onTap: () {},
                        ),
                        Spacer(),
                        IconCard(
                          iconPath: 'assets/icons/icon_4.svg',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.75,
                  height: size.height * 0.75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(plantDetails.imageURL),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70.0),
                      bottomLeft: Radius.circular(70.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.29),
                        blurRadius: 60.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${plantDetails.name}\n',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                            ),
                      ),
                      TextSpan(
                        text: plantDetails.location,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$${plantDetails.price}',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: size.width / 2,
                    height: 84.0,
                    child: FlatButton(
                      color: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: size.width / 2,
                    height: 84.0,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
