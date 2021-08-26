import 'package:flutter/material.dart';
import 'package:realstateapp/constants.dart';
import 'package:realstateapp/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.supervisor_account,
                          text: "67+",
                          label: "Client"),
                    ),
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.location_on,
                          text: "139+",
                          label: "Projects"),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding*3,),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.public,
                          text: "30+",
                          label: "Countries"),
                    ),
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.star,
                          text: "13k+",
                          label: "Stars"),
                    )
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: buildIconInfo(
                      context: context,
                      icon: Icons.supervisor_account,
                      text: "67+",
                      label: "Client"),
                ),
                Expanded(
                  child: buildIconInfo(
                      context: context,
                      icon: Icons.location_on,
                      text: "139+",
                      label: "Projects"),
                ),
                Expanded(
                  child: buildIconInfo(
                      context: context,
                      icon: Icons.public,
                      text: "30+",
                      label: "Countries"),
                ),
                Expanded(
                  child: buildIconInfo(
                      context: context,
                      icon: Icons.star,
                      text: "13k+",
                      label: "Stars"),
                )
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
