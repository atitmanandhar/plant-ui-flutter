import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui_flutter/components/featured_plant.dart';
import 'package:plant_ui_flutter/components/header_with_search_box.dart';
import 'package:plant_ui_flutter/components/recommended_plant.dart';
import 'package:plant_ui_flutter/components/title_with_more_btn.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(),
            TitleWithMoreBtn(
              title: 'Recommended',
              onPressed: () {},
            ),
            RecommendedPlant(),
            TitleWithMoreBtn(
              title: 'Featured Plants',
              onPressed: () {
                print('Button Tapped');
              },
            ),
            FeaturedPlant(),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentTab,
      onTap: (int value) {
        setState(() {
          _currentTab = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.nature,
            size: 30.0,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            size: 30.0,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.face,
            size: 30.0,
          ),
          title: SizedBox.shrink(),
        ),
      ],
    );
  }
}
