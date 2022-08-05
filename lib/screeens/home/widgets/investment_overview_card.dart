import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koshex_assignment/constants/color_constants.dart';
import 'package:koshex_assignment/constants/text_styke_constants.dart';

import '../../../constants/border_constants.dart';

investmentOverviewCard() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
    child: Container(
      height: 215.h,
      width: 330.w,
      decoration: BoxDecoration(
        color: ColorConstants.grey,
        border: BorderConstants.outerBorder(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Investment OverView",
                  style: TextStyleConstants.smallText(
                    color: ColorConstants.lightGold,
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                  height: 21.h,
                  width: 45.w,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "View",
                      style: TextStyleConstants.smallText(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 5,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 3; i++)
                Column(
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.h,
                      color: Colors.grey,
                      child: Center(
                        child: Icon(
                          Icons.attach_money,
                          color: ColorConstants.lightGold,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Gold",
                      style: TextStyleConstants.smallText(),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "14.56 Lakhs",
                      style: TextStyleConstants.smallText(
                          color: ColorConstants.redAccent),
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 3; i++)
                Column(
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.h,
                      color: Colors.grey,
                      child: Center(
                        child: Icon(
                          Icons.attach_money,
                          color: ColorConstants.lightGold,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Gold",
                      style: TextStyleConstants.smallText(),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "14.56 Lakhs",
                      style: TextStyleConstants.smallText(
                          color: ColorConstants.redAccent),
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    ),
  );
}
