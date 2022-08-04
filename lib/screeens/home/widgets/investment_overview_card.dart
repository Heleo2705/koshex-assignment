import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

investmentOverviewCard() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
    child: Container(
      height: 215.h,
      width: 330.w,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Investment OverView"),
          Divider(
            thickness: 5,
            color: Colors.grey,
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  height: 50.h,
                  width: 50.h,
                  color: Colors.grey,
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
                Container(
                  height: 50.h,
                  width: 50.h,
                  color: Colors.grey,
                ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    ),
  );
}
