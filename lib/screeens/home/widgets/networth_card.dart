import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koshex_assignment/constants/color_constants.dart';
import 'package:koshex_assignment/constants/text_styke_constants.dart';

import '../../../constants/border_constants.dart';

networthCard() {
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      child: _networthCardDetails(),
    ),
    decoration: BoxDecoration(
      color: ColorConstants.grey,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
  );
}

Container _networthCardDetails() {
  return Container(
    decoration: BoxDecoration(
      border: BorderConstants.outerBorder(),
      borderRadius: BorderRadius.circular(5),
      color: ColorConstants.lightGrey,
    ),
    height: 110.h,
    width: 310.w,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          _insightRow(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Track your net worth",
                    style: TextStyleConstants.smallText(),
                  ),
                  Text(
                    "in real time",
                    style: TextStyleConstants.smallText(),
                  ),
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Assets",
                        style: TextStyleConstants.smallText(),
                      ),
                      Text(
                        "34.4L",
                        style: TextStyleConstants.h1Text(
                          color: ColorConstants.lightGold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Liabilities",
                        style: TextStyleConstants.smallText(),
                      ),
                      Text(
                        "NA",
                        style: TextStyleConstants.h1Text(
                            color: ColorConstants.redAccent),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Row _insightRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Insight of",
            style:
                TextStyleConstants.smallText(color: ColorConstants.lightGold),
          ),
          Text(
            "Your Network",
            style: TextStyleConstants.smallText(),
          ),
        ],
      ),
      SizedBox(
        width: 20.w,
      ),
      Row(
        children: [
          Text(
            "Rs 34.4",
            style: TextStyleConstants.h1Text(),
          ),
          SizedBox(
            width: 10.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lakhs",
                style: TextStyleConstants.extraSmallText(),
              ),
              Text(
                "2.32",
                style: TextStyleConstants.extraSmallText(
                    color: Colors.greenAccent),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
