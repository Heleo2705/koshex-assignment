import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koshex_assignment/constants/border_constants.dart';
import 'package:koshex_assignment/constants/color_constants.dart';
import 'package:koshex_assignment/constants/text_styke_constants.dart';

exploreInvestmentCard() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Container(
      height: 435.h,
      width: 330.w,
      decoration: BoxDecoration(
          border: BorderConstants.outerBorder(), color: ColorConstants.grey),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Explore Personalised Investment",
              style: TextStyleConstants.smallText(
                color: ColorConstants.lightGold,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            _calibrateRiskCard(),
            Divider(),
            _optionsSubCard()
          ],
        ),
      ),
    ),
  );
}

Expanded _optionsSubCard() {
  return Expanded(
    child: ListView.builder(
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          child: Container(
            height: 161.h,
            width: 140.w,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.white,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70.h,
                  color: Colors.amberAccent[100],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Cosmos Astronaut",
                        style: TextStyleConstants.smallText(),
                      ),
                      Text(
                        "Personalised Kosh for short term holding",
                        style: TextStyleConstants.extraSmallText(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Min",
                            style: TextStyleConstants.smallText(),
                          ),
                          Text(
                            "Rs 1000",
                            style: TextStyleConstants.smallText(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Returns",
                            style: TextStyleConstants.smallText(),
                          ),
                          Text(
                            "5%",
                            style: TextStyleConstants.smallText(),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Schemes",
                            style: TextStyleConstants.smallText(),
                          ),
                          Text(
                            "3",
                            style: TextStyleConstants.smallText(),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: 5,
      scrollDirection: Axis.horizontal,
    ),
  );
}

Container _calibrateRiskCard() {
  return Container(
    height: 200.h,
    width: 300.w,
    decoration: BoxDecoration(
        border: BorderConstants.outerBorder(), color: ColorConstants.lightGrey),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Calibrate Risk Profiles",
            style: TextStyleConstants.smallText(),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            thickness: 1,
          ),
          _calibrateRow(),
          Divider(
            thickness: 1,
          ),
          Card(
            color: ColorConstants.offWhite,
            child: Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  color: Colors.lightGreenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Defensive"),
                  ),
                ),
                Expanded(
                  child: Slider(
                    value: 10,
                    onChanged: (v) {},
                    max: 100,
                    min: 0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Row _calibrateRow() {
  return Row(
    children: [
      Text(
        "Recommended",
        style: TextStyleConstants.smallText(),
      ),
      Switch(value: false, onChanged: (v) {}),
      Text(
        "Set manually",
        style: TextStyleConstants.smallText(),
      ),
      Expanded(
        child: SizedBox(),
      ),
      Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Re-Calibrate",
            style: TextStyleConstants.smallText(),
          ),
        ),
      )
    ],
  );
}
