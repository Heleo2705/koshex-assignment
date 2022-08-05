import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koshex_assignment/constants/color_constants.dart';
import 'package:koshex_assignment/constants/text_styke_constants.dart';

import '../../../constants/border_constants.dart';

goldinvestmentCard() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
    child: Container(
      height: 160.h,
      width: 330.w,
      decoration: BoxDecoration(
          border: BorderConstants.outerBorder(), color: ColorConstants.grey),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Save More with Inda's Favorite: Digital Gold",
              style: TextStyleConstants.smallText(
                color: ColorConstants.lightGold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                    child: Container(
                      width: 234.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: Column(
                        children: [
                          _topCard(),
                          _midCard(),
                          Expanded(
                            child: SizedBox(),
                          ),
                          _bottomCard(),
                        ],
                      ),
                    ),
                  );
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

Container _bottomCard() {
  return Container(
    height: 40.h,
    width: 234.w,
    color: ColorConstants.lightGrey,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Buy Now",
                style: TextStyleConstants.smallText(),
              ),
              Expanded(child: SizedBox()),
              Text(
                "Rs 5,767",
                style: TextStyleConstants.smallText(
                  color: ColorConstants.lightGold,
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "Buy Now",
                style: TextStyleConstants.smallText(),
              )),
        ],
      ),
    ),
  );
}

Container _midCard() {
  return Container(
    height: 49.h,
    width: 234.w,
    color: ColorConstants.lightGrey,
    child: Padding(
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
                "Rs 100",
                style: TextStyleConstants.smallText(),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1M",
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
                "24Karat",
                style: TextStyleConstants.smallText(),
              ),
              Text(
                "99.99% Pure",
                style: TextStyleConstants.smallText(),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Container _topCard() {
  return Container(
    height: 21.h,
    width: 234.w,
    color: ColorConstants.lightGold,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      child: Row(
        children: [
          Text(
            "Powered by SafeGold",
            style: TextStyleConstants.smallText(),
          )
        ],
      ),
    ),
  );
}
