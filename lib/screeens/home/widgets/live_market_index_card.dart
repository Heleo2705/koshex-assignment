import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koshex_assignment/constants/color_constants.dart';
import 'package:koshex_assignment/constants/text_styke_constants.dart';

import '../../../constants/border_constants.dart';

liveMarketIndexCard() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
    child: Container(
      height: 110.h,
      width: 330.w,
      decoration: BoxDecoration(
        color: ColorConstants.grey,
        border: BorderConstants.outerBorder(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Live market Index",
              style: TextStyleConstants.smallText(
                color: ColorConstants.lightGold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return _marketSubCard();
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Padding _marketSubCard() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
    child: Container(
      height: 60.h,
      width: 125.w,
      decoration: BoxDecoration(
        color: ColorConstants.lightGrey,
        border: Border.all(
          width: 1,
          color: ColorConstants.offWhite,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.blue,
                  ),
                  height: 13.h,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: Text(
                        "BSE Sensex",
                        style: TextStyleConstants.extraSmallText(
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.lightGreen,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "2.36%",
                  style: TextStyleConstants.extraSmallText(),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "54,040",
                  style: TextStyleConstants.smallText(),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Text(
                  "263.15",
                  style:
                      TextStyleConstants.smallText(color: Colors.greenAccent),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
