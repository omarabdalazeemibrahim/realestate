import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/screens/homescreen.dart';
import 'package:realstateapp/widgets/main/icon_info.dart';
import 'package:realstateapp/widgets/main/projects.dart';
import 'package:realstateapp/widgets/main/recommendations.dart';

import 'home_banner.dart';
class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
