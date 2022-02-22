import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;
import '../constants/titles.dart' as text_content;
import 'package:accordion/accordion.dart';

class OwambeSnippet extends StatelessWidget {
  const OwambeSnippet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Accordion(
      maxOpenSections: 1,
      children: [
        AccordionSection(
            rightIcon: Icon(Icons.ac_unit),
            isOpen: true,
            header: ListTile(
              leading: Image(
                image: AssetImage("images/bigpic1.png"),
                width: 42,
                height: 42,
              ),
              title: Text("Demo"),
              subtitle: Text("subtitle demo data"),
            ),
            content: Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: color.AppColor.lightBackgroundColor,
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                    padding: EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Image(image: AssetImage("images/pic1.png")),
                        SizedBox(
                          height: 4,
                        ),
                        text_content.ContentSubtitles(
                          subtitle: "Poster",
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: color.AppColor.lightBackgroundColor,
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                    padding: EdgeInsets.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("images/pic1.png")),
                            Image(image: AssetImage("images/pic2.png")),
                            Image(image: AssetImage("images/pic3.png")),
                            Image(image: AssetImage("images/pic1.png")),
                            Image(image: AssetImage("images/pic2.png")),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        text_content.ContentSubtitles(
                          subtitle: "20 other friends are attending",
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ))
      ],
    );
  }
}
