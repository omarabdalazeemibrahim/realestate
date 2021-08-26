import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/constants.dart';
import 'package:realstateapp/models/projects.dart';
import 'package:realstateapp/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Our Projects",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Responsive(
            desktop: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(index, context),
            ),
            mobile: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 1,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(index, context),
            ),
            tablet: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: MediaQuery.of(context).size.width<900 ? 2 :3,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(index, context),
            ),
            mobileLarge: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              itemBuilder: (context, index) => ProjectCard(index, context),
            ),
          ),
        ],
      ),
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        padding: EdgeInsets.all(kDefaultPadding),
        itemCount: itemCount,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itemBuilder);
  }

  Container ProjectCard(int index, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            demoProjects[index].image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            demoProjects[index].title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              demoProjects[index].description!,
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "More Info",
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
