import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

networthCard() {
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      child: _networthCardDetails(),
    ),
    decoration: BoxDecoration(
      color: Colors.black,
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
      border: Border.all(width: 2),
      color: Colors.white,
    ),
    height: 110.h,
    width: 310.w,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Column(
        children: [
          _insightRow(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Track your net worth"),
                  Text("in real time"),
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
                      Text("Assets"),
                      Text("Rs 34.4L"),
                    ],
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Liabilities"),
                      Text("NA"),
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
          Text("Insight of"),
          Text("Your Network"),
        ],
      ),
      SizedBox(
        width: 20.w,
      ),
      Row(
        children: [
          Text(
            "Rs 34.4",
            style: TextStyle(fontSize: 24.sp),
          ),
          SizedBox(
            width: 10.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lakhs"),
              Text("2.32"),
            ],
          ),
        ],
      ),
    ],
  );
}
