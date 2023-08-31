import 'package:edulogy/Home/controller/home_controller.dart';
import 'package:edulogy/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/appbar_one.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> courseList = [
      'Physics',
      'Chemistry',
      'Biology',
      'Higher Math',
    ];
    final List<String> courseImage = [
      'assets/images/physics.png',
      'assets/images/chemistry.png',
      'assets/images/biology.png',
      'assets/images/math.png',
    ];
    final List<String> courseRating = [
      '4.1',
      '5.0',
      '4',
      '3',
    ];
    HomeController homeController = Get.put(HomeController());
    final TextEditingController searchController = TextEditingController();
    bool isFilterSelected = false;
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.all(5.0.sp),
                  child: Obx(() => Card(
                        color: Colors.white,
                        child: AnimatedContainer(
                          height: homeController.seemore.value ? 150.h : 120.h,
                          duration: const Duration(milliseconds: 100),
                          child: Padding(
                            padding:  EdgeInsets.all(5.0.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/option-quiz.png"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Mock MCQ",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/written-exam.png"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Mock Written",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/book.gif"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Book Store",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/dashboard.png"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Dashboard",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/appointment.png"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Appointment",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/reveiw.png"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Reveiw",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/call-me.png"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Call Me",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Image.asset(
                                              "assets/images/join-with-us.png"),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "Join with us",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
                Obx(
                  () => homeController.seemore.value
                      ? const SizedBox()
                      : Positioned.fill(
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(0.0),
                                  Colors.white.withOpacity(0.1),
                                  Colors.white.withOpacity(0.2),
                                  Colors.white.withOpacity(0.6),
                                  Colors.white.withOpacity(1),
                                ],
                              ),
                            ),
                          ),
                        ),
                ),
                Positioned(
                    bottom: 20.h,
                    left: 130.w,
                    child: Opacity(
                      opacity: 0.9,
                      child: InkWell(
                        onTap: () {
                          homeController.seemore.value =
                              homeController.seemore.value ? false : true;
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                            child: Center(
                              child: Obx(() => Row(
                                    children: [
                                      Text(
                                          homeController.seemore.value
                                              ? "See less"
                                              : "See more",
                                          style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Icon(homeController.seemore.value
                                          ? Icons.keyboard_arrow_up_outlined
                                          : Icons.keyboard_arrow_down_outlined)
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.0.sp),
              child: Text(
                "Live Quiz",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 130.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20, // Number of items in the list
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.all(8.0.sp),
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Container(
                        height: 120.h,
                        width: MediaQuery.of(context).size.width - 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0.sp),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.yellow,
                              AppColors.yellow.withOpacity(0.8),
                              AppColors.yellow.withOpacity(0.8),
                              AppColors.yellow.withOpacity(0.7),
                              AppColors.yellow.withOpacity(0.6),
                              AppColors.yellow.withOpacity(0.5)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(8.0.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Physics Test 8",
                                    style: GoogleFonts.inter(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_sharp,
                                        size: 15.sp,
                                      ),
                                      Text(
                                        " 1 hour 23 minutes",
                                        style: GoogleFonts.inter(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.school_outlined,
                                        size: 15.sp,
                                      ),
                                      Text(
                                        " Andrew Flock",
                                        style: GoogleFonts.inter(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "55 ",
                                        style: GoogleFonts.inter(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w800,
                                            color: AppColors.blue),
                                      ),
                                      Text(
                                        "Participants",
                                        style: GoogleFonts.inter(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      height: 60.h,
                                      width: 60.w,
                                      child: Image.asset(
                                          "assets/images/physics.png")),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.blue,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 4, 10, 4),
                                      child: Center(
                                        child: Text(
                                          "Join now",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white),
                                        ),
                                      ),
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
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.0.sp, right: 10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 14.0.sp),
                    child: Text(
                      'My Course',
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_forward)
                ],
              ),
            ),
            SizedBox(
              height: 150.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 170.h,
                    width: 180.w,
                    child: Card(
                      color: AppColors.secondaryBlue,
                      elevation: 4.0,
                      margin: EdgeInsets.all(14.0.sp),
                      child: Container(
                        padding:
                            EdgeInsets.only(top: 16.0.sp, right: 15.sp, left: 15.sp),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  courseList[index],
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(
                                      courseRating[index],
                                      style: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            LinearProgressIndicator(
                              value: 0.7,
                              // Example progress value (0.0 to 1.0)
                              backgroundColor: Colors.grey[300],
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(AppColors.blue),
                            ),
                            SizedBox(height: 16.0.h),
                            Image.asset(
                              courseImage[index],
                              height: 30.h,
                              width: 50.w,
                            ),
                            SizedBox(height: 10.0.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text('44'),
                                  ],
                                ),
                                Container(
                                  height: 20.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.backgroundcolor,
                                      border:
                                          Border.all(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(Icons.arrow_forward),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.0.sp, right: 10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 18.0.sp),
                    child: Text(
                      'Popular Course',
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_forward)
                ],
              ),
            ),
            SizedBox(
              height: 150.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 170.h,
                    width: 180.w,
                    child: Card(
                      color: AppColors.secondaryBlue,
                      elevation: 4.0,
                      margin: EdgeInsets.all(14.sp),
                      child: Container(
                        padding:
                            EdgeInsets.only(top: 16.0.sp, right: 15.sp, left: 15.sp),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  courseList[index],
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(
                                      courseRating[index],
                                      style: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                             Row(
                              children: [
                                Text(
                                  'Duration: ',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  '3 hours',
                                  style: TextStyle(
                                      fontSize: 13.sp, color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(height: 8.0.h),
                            Image.asset(
                              courseImage[index],
                              height: 30.h,
                              width: 50.w,
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.monetization_on_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3.w
                                      ,
                                    ),
                                    Text('44'),
                                  ],
                                ),
                                Container(
                                  height: 20.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.backgroundcolor,
                                      border:
                                          Border.all(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(10.sp)),
                                  child: const Icon(Icons.arrow_forward),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
