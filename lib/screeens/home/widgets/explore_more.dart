import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

exploreMoreCard() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Container(
      height: 140.h,
      width: 330.w,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                Text("Explore more"),
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
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Mutual Funds"),
                          Expanded(child: SizedBox()),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      Text(
                        "Lorem ipsum solor dolor amore fato",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    ),
  );
}
