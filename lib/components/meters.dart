import 'package:flutter/material.dart';
import '../constants/colors.dart' as color;
import '../constants/titles.dart' as text_content;

class OwambeMeter extends StatelessWidget {
  const OwambeMeter({
    Key? key,
    // required this.meterColor,
    // required this.monthName,
    // required this.owambeNumber
  }) : super(key: key);

  // final String monthName;
  // final Color meterColor;
  // final int owambeNumber;

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width * 0.04;
    return Container(
      child: Stack(
        children: [
          _singleMeterBottom("Jan", 4, color.AppColor.meterRedColor),
          Positioned(
              left: 25,
              child:
                  _singleMeterTop("Feb", 0, color.AppColor.meterDefaultColor)),
          Positioned(
              left: 50,
              child: _singleMeterBottom(
                  "Mar", 6, color.AppColor.meterOrangeColor)),
          Positioned(
              left: 75,
              child: _singleMeterTop(
                  "April", 0, color.AppColor.meterDefaultColor)),
          Positioned(
              left: 100,
              child:
                  _singleMeterBottom("May", 2, color.AppColor.meterRedColor)),
          Positioned(
              left: 125,
              child:
                  _singleMeterTop("June", 9, color.AppColor.meterGreenColor)),
          Positioned(
              left: 150,
              child: _singleMeterBottom(
                  "July", 4, color.AppColor.meterYellowColor)),
          Positioned(
              left: 175,
              child: _singleMeterTop("Aug", 2, color.AppColor.meterGreenColor)),
          Positioned(
              left: 200,
              child:
                  _singleMeterBottom("Sept", 2, color.AppColor.meterRedColor)),
          Positioned(
              left: 225,
              child:
                  _singleMeterTop("Oct", 2, color.AppColor.meterDefaultColor)),
          Positioned(
              left: 250,
              child: _singleMeterBottom(
                  "Nov", 2, color.AppColor.meterYellowColor)),
          Positioned(
              left: 275,
              child: _singleMeterTop("Dec", 2, color.AppColor.meterRedColor)),
        ],
      ),
    );
  }

  Widget _singleMeterTop(String monthName, int owambeNumber, Color meterColor) {
    return Container(
      // padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                text_content.MeterText(
                    subtitle: monthName + " - " + owambeNumber.toString()),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 12,
                  width: 2,
                  color: meterColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 12,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(color: color.AppColor.primaryTextColor),
              borderRadius: BorderRadius.circular(10),
              color: meterColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _singleMeterBottom(
      String monthName, int owambeNumber, Color meterColor) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 12,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(color: color.AppColor.primaryTextColor),
              borderRadius: BorderRadius.circular(10),
              color: meterColor,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 12,
                  width: 2,
                  color: meterColor,
                ),
                SizedBox(
                  height: 6,
                ),
                text_content.MeterText(
                  subtitle: monthName + " - " + owambeNumber.toString(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
