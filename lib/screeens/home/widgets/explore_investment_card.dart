import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

exploreInvestmentCard() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Container(
      height: 435.h,
      width: 330.w,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore Personalised Investment"),
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
            height: 60.h,
            width: 125.w,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Colors.red,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Lorem "),
                    Text("Lorem "),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Lorem "),
                    Text("Lorem "),
                  ],
                ),
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
      border: Border.all(width: 2),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Calibrate Risk Profiles"),
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
        style: TextStyle(fontSize: 10),
      ),
      Switch(value: false, onChanged: (v) {}),
      Text("Set manually", style: TextStyle(fontSize: 10)),
      Expanded(
        child: SizedBox(),
      ),
      Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Re-Calibrate", style: TextStyle(fontSize: 10)),
        ),
      )
    ],
  );
}
