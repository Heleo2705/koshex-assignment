import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koshex_assignment/constants/color_constants.dart';
import 'package:koshex_assignment/constants/text_styke_constants.dart';

import '../../../constants/border_constants.dart';

exploreMoreCard() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Container(
      height: 140.h,
      width: 330.w,
      decoration: BoxDecoration(
          border: BorderConstants.outerBorder(), color: ColorConstants.grey),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                Text(
                  "Explore more",
                  style: TextStyleConstants.smallText(
                      color: ColorConstants.lightGold),
                ),
                Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {},
                  child: Text("View All"),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 2; i++)
                Container(
                  width: 140.w,
                  height: 60.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorConstants.lightGrey,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Mutual Funds",
                              style: TextStyleConstants.smallText(),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                        Text("Lorem ipsum solor dolor amore fato",
                            style: TextStyleConstants.smallText(
                                color: ColorConstants.offWhite)),
                      ],
                    ),
                  ),
                )
            ],
          )
        ],
      ),
    ),
  );
}
