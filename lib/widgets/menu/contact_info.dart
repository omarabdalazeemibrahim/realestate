import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/constants.dart';
class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        buildPadding(
          title:"Address" ,text:"Station Street 5"
        ),
        buildPadding(title: "Country", text: "Austria"),
        buildPadding(title: "Email", text: "email@website.com"),
        buildPadding(title: "Mobile", text: "01123996497"),
        buildPadding(title: "WebSite", text: "myWebsite@website.com"),


      ],
    );
  }

  Padding buildPadding({required String title , required String text}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$title" ,style: TextStyle(color: Colors.white),
            ),
            Text("$text"),
          ],
        ),
      );
  }
}
