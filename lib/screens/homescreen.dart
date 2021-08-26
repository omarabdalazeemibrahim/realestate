import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/constants.dart';
import 'package:realstateapp/responsive.dart';
import 'package:realstateapp/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu))),
            ),
      drawer: SideMenuSection(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 1440.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (Responsive.isDesktop(context))
                      Expanded(flex: 2, child: SideMenuSection()),

                    Expanded(
                      flex: 7,
                      child: mainSection,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
