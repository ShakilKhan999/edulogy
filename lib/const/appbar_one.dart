import 'package:edulogy/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(105.0.h); // Set your preferred height

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 0),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.sp),
          bottomRight: Radius.circular(20.sp),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 8.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20.h,width: 20.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90.sp)
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                  child: Image.asset("assets/images/pp.jpg"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            'Hi Sofia',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 20.sp,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 35.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              shadows:  [
                BoxShadow(
                  color: const Color(0x111D1617),
                  blurRadius: 40.sp,
                  offset: const Offset(0, 10),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      hintText: 'Search here',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Text(
                  '| ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff9ca3af),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14.0.sp),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/Filter.png',
                      height: 20.h,
                      width: 21.w,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }}