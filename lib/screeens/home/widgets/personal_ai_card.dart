import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

personalAICard() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    child: Container(
      decoration: BoxDecoration(border: Border.all(width: 2)),
      width: 330.w,
      height: 105.h,
      child: Center(
        child: ListTile(
          leading: Icon(
            Icons.supervised_user_circle_outlined,
            size: 40,
          ),
          title: Text("Good Noon !"),
          subtitle: Column(
            children: [
              Wrap(
                children: [
                  Text(
                      "I am your personal assistant. How can I help you today?"),
                ],
              ),
              Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(width: 1)),
                        height: 20.h,
                        width: 30.w,
                        child: Center(child: Text("Hi")),
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
