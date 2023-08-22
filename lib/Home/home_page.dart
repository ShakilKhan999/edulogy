import 'package:edulogy/Home/controller/home_controller.dart';
import 'package:edulogy/const/colors.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Obx(() => Card(
                      color: Colors.white,
                      child: AnimatedContainer(
                        height: homeController.seemore.value ? 170 : 135,
                        duration: Duration(milliseconds: 100),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Image.asset(
                                              "assets/images/option-quiz.png"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Mock MCQ",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Image.asset(
                                              "assets/images/written-exam.png"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Mock Written",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Image.asset(
                                              "assets/images/book.gif"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Book Store",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Image.asset(
                                              "assets/images/dashboard.png"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Dashboard",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 32,
                                          width: 32,
                                          child: Image.asset(
                                              "assets/images/appointment.png"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Appointment",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Image.asset(
                                              "assets/images/reveiw.png"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Reveiw",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Image.asset(
                                              "assets/images/call-me.png"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Call Me",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Image.asset(
                                              "assets/images/join-with-us.png"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Join with us",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
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
                    ? SizedBox()
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
                  bottom: 20,
                  left: 125,
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
                                          fontSize: 12,
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
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Course',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection:
              Axis.horizontal,
              itemCount:courseList.length,
              itemBuilder: (BuildContext context, int index) {
               return SizedBox(
                 height: 190,
                 width: 200,
                 child: Card(
                   color: AppColors.secondaryBlue,
                   elevation: 4.0,
                   margin: EdgeInsets.all(16.0),
                   child: Container(
                     padding: EdgeInsets.only(top: 16.0,right: 15,left: 15),
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(courseList[index],style: TextStyle(fontSize: 15,),),
                             Row(
                               children: [
                                 Icon(Icons.star,color: Colors.white,),
                                 SizedBox(
                                   width: 3,
                                 ),
                                 Text(courseRating[index],style: TextStyle(fontSize: 15,color: Colors.white),)
                               ],
                             )
                           ],
                         ),
                         SizedBox(height: 3,),
                         LinearProgressIndicator(
                           value: 0.7, // Example progress value (0.0 to 1.0)
                           backgroundColor: Colors.grey[300],
                           valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
                         ),
                         SizedBox(height: 16.0),
                         Image.asset(
                           courseImage[index],
                           height: 30,
                           width: 50,
                         ),
                         SizedBox(height: 16.0),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 Icon(Icons.person,color: Colors.white,),
                                 SizedBox(
                                   width: 3,
                                 ),
                                 Text('44'),
                               ],
                             ),
                             Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                   color: AppColors.backgroundcolor,
                                   border: Border.all(color: Colors.transparent),
                                   borderRadius: BorderRadius.circular(10)),
                               child: Icon(Icons.arrow_forward),
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
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Course',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection:
              Axis.horizontal,
              itemCount:courseList.length,
              itemBuilder: (BuildContext context, int index) {
               return SizedBox(
                 height: 190,
                 width: 200,
                 child: Card(
                   color: AppColors.secondaryBlue,
                   elevation: 4.0,
                   margin: EdgeInsets.all(16.0),
                   child: Container(
                     padding: EdgeInsets.only(top: 16.0,right: 15,left: 15),
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(courseList[index],style: TextStyle(fontSize: 15,),),
                             Row(
                               children: [
                                 Icon(Icons.star,color: Colors.white,),
                                 SizedBox(
                                   width: 3,
                                 ),
                                 Text(courseRating[index],style: TextStyle(fontSize: 15,color: Colors.white),)
                               ],
                             )
                           ],
                         ),
                         SizedBox(height: 3,),
                         const Row(
                           children: [
                             Text('Duration: ',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),),
                             SizedBox(width: 3,),
                             Text('3 hours',style: TextStyle(fontSize: 13,color: Colors.white),)
                           ],
                         ),
                         SizedBox(height: 10.0),
                         Image.asset(
                           courseImage[index],
                           height: 30,
                           width: 50,
                         ),
                         SizedBox(height: 16.0),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 Icon(Icons.monetization_on_outlined,color: Colors.white,),
                                 SizedBox(
                                   width: 3,
                                 ),
                                 Text('44'),
                               ],
                             ),
                             Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                   color: AppColors.backgroundcolor,
                                   border: Border.all(color: Colors.transparent),
                                   borderRadius: BorderRadius.circular(10)),
                               child: Icon(Icons.arrow_forward),
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
    ));
  }
}
