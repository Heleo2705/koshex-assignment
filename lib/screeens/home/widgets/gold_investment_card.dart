import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

goldinvestmentCard() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
    child: Container(
      height: 160.h,
      width: 330.w,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Save More with Inda's Favorite: Digital Gold"),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.red,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60.h,
                            width: 125.w,
                            color: Colors.blueGrey,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Container(
                            height: 25.h,
                            width: 125.w,
                            color: Colors.grey,
                          ),
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
