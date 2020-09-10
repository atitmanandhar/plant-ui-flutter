import 'package:flutter/material.dart';
import 'package:plant_ui_flutter/constants.dart';
import 'package:plant_ui_flutter/data/data.dart';
import 'package:plant_ui_flutter/models/plant.dart';
import 'package:plant_ui_flutter/screens/detail_screen.dart';

class RecommendedPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 280.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        itemCount: recommendedPlants.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          Plant recommend = recommendedPlants[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    context: context,
                    plantDetails: recommend,
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              width: size.width * 0.4,
              child: Column(
                children: [
                  ClipRRect(
                    child: Image(
                      image: AssetImage(recommend.imageURL),
                      width: size.width,
                      height: 190.0,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: kDefaultPadding / 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20.0,
                          color: kPrimaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              recommend.name.toUpperCase(),
                              style: Theme.of(context).textTheme.button,
                            ),
                            Text(
                              '\$${recommend.price}',
                              style:
                                  Theme.of(context).textTheme.button.copyWith(
                                        color: kPrimaryColor,
                                      ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          recommend.location.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
