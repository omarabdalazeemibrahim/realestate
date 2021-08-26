import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/constants.dart';
import 'package:realstateapp/models/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Client Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: RecommendationCard(index, context),
                    )),
          ),
        )
      ],
    );
  }

  Container RecommendationCard(int index, BuildContext context) {
    return Container(
      width: 400.0,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(demoRecommendations[index].image!),
              ),
              title: Text(
                demoRecommendations[index].name!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              subtitle: Text(
                demoRecommendations[index].source!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              demoRecommendations[index].text!,
              style: TextStyle(
                height: 1.5,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            )
          ],
        ),
      ),
    );
  }
}
