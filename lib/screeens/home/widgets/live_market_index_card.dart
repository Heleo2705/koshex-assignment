import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

liveMarketIndexCard() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
    child: Container(
      height: 110.h,
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
            Text("Live market Index"),
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
        border: Border.all(
          width: 4,
          color: Colors.red,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (int i = 0; i < 3; i++)
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem ",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Amor",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    ),
  );
}
