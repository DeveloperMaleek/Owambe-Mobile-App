import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:owambe_app/constants/colors.dart' as color;
import '../constants/titles.dart' as text_content;

class OwambeSnippet extends StatelessWidget {
  const OwambeSnippet({Key? key}) : super(key: key);

  ClipRRect userImage(Image posterImage) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10), child: posterImage);
  }

  @override
  Widget build(BuildContext context) {
    return Accordion(
      contentVerticalPadding: 0,
      disableScrolling: true,
      contentBorderWidth: 0,
      contentBorderColor: Colors.transparent,
      paddingListHorizontal: 0,
      contentBackgroundColor: color.AppColor.accent,
      headerBackgroundColor: color.AppColor.accent,
      headerPadding: const EdgeInsets.symmetric(horizontal: 12),
      maxOpenSections: 1,
      children: [
        AccordionSection(
            rightIcon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: color.AppColor.iconBg,
              ),
              child: Icon(
                Icons.filter_list,
                size: 18,
                color: color.AppColor.primaryTextColor,
              ),
            ),
            isOpen: true,
            header: _headerTile(
                const Image(
                  image: const AssetImage("images/bigpic1.png"),
                  width: 42,
                  height: 42,
                ),
                "Akin Olanrewaju Graduation",
                "Akin graduates from school today!"),
            content: _contentSection(
                const Image(image: const AssetImage("images/pic1.png")),
                const Image(image: const AssetImage("images/pic2.png")),
                const Image(image: AssetImage("images/pic3.png")),
                const Image(image: AssetImage("images/pic2.png")),
                const Image(image: AssetImage("images/pic3.png")),
                const Image(image: AssetImage("images/pic1.png")))),
        AccordionSection(
            rightIcon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: color.AppColor.iconBg,
                ),
                child: Icon(
                  Icons.filter_list,
                  size: 18,
                  color: color.AppColor.primaryTextColor,
                )),
            isOpen: false,
            header: _headerTile(
                const Image(
                  image: const AssetImage("images/bigpic2.png"),
                  width: 42,
                  height: 42,
                ),
                "Oredola Ibrahim's Wedding",
                "Finally... Oga is getting married"),
            content: _contentSection(
                const Image(image: AssetImage("images/pic1.png")),
                const Image(image: const AssetImage("images/pic2.png")),
                const Image(image: AssetImage("images/pic3.png")),
                const Image(image: const AssetImage("images/pic2.png")),
                const Image(image: AssetImage("images/pic3.png")),
                const Image(image: const AssetImage("images/pic1.png")))),
        AccordionSection(
            rightIcon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: color.AppColor.iconBg,
              ),
              child: Icon(
                Icons.filter_list,
                size: 18,
                color: color.AppColor.primaryTextColor,
              ),
            ),
            isOpen: false,
            header: _headerTile(
                const Image(
                  image: AssetImage("images/bigpic1.png"),
                  width: 42,
                  height: 42,
                ),
                "Adieu Dada: Mrs Salamanda",
                "Gone too soon, Mama. RIP"),
            content: _contentSection(
                const Image(
                  image: const AssetImage("images/pic1.png"),
                  width: 24,
                  height: 24,
                ),
                const Image(
                    image: const AssetImage("images/pic2.png"),
                    width: 24,
                    height: 24),
                const Image(
                    image: const AssetImage("images/pic3.png"),
                    width: 24,
                    height: 24),
                const Image(
                    image: AssetImage("images/pic2.png"),
                    width: 24,
                    height: 24),
                const Image(
                    image: AssetImage("images/pic3.png"),
                    width: 24,
                    height: 24),
                const Image(
                    image: const AssetImage("images/pic1.png"),
                    width: 24,
                    height: 24)))
      ],
    );
  }

  Widget _headerTile(
      Image eventImage, String headerTitle, String headerSubtitle) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: userImage(eventImage),
      title: text_content.EventTextTitle(eventTextTitle: headerTitle),
      subtitle: text_content.ContentSubtitles(subtitle: headerSubtitle),
    );
  }

  Widget _contentSection(Image posterImage1, Image userImage1, Image userImage2,
      Image userImage3, Image userImage4, Image userImage5) {
    return Container(
        child: Column(
      children: [
        Container(
          color: color.AppColor.grayFive,
          height: 2,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: color.AppColor.lightBackgroundColor,
                  borderRadius: BorderRadius.circular(8)),
              margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  userImage(posterImage1),
                  const SizedBox(
                    height: 4,
                  ),
                  const text_content.ContentSubtitles(
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
                margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                padding: const EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: userImage(userImage1),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: userImage(userImage2),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: userImage(userImage3),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: userImage(userImage4),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: userImage(userImage5),
                      )
                    ]),
                    const SizedBox(
                      height: 4,
                    ),
                    const text_content.ContentSubtitles(
                      subtitle: "20 other friends are attending",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
