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
                  padding: const EdgeInsets.all(5.0),
                  child: Obx(()=>Card(
                    color: Colors.white,
                    child: AnimatedContainer(
                      height: homeController.seemore.value? 170:135,
                      duration: Duration(milliseconds: 100),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:35, width:35,
                                        child: Image.asset("assets/images/option-quiz.png"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Mock MCQ",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:35, width:35,
                                        child: Image.asset("assets/images/written-exam.png"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Mock Written",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:35, width:35,
                                        child: Image.asset("assets/images/book.gif"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Book Store",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:35, width:35,
                                        child: Image.asset("assets/images/dashboard.png"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Dashboard",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:32, width:32,
                                        child: Image.asset("assets/images/appointment.png"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Appointment",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:35, width:35,
                                        child: Image.asset("assets/images/reveiw.png"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Reveiw",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:35, width:35,
                                        child: Image.asset("assets/images/call-me.png"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Call Me",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:35, width:35,
                                        child: Image.asset("assets/images/join-with-us.png"),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Join with us",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),)
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
                Obx(()=>homeController.seemore.value?SizedBox():
                Positioned.fill(
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
                ),),
                Positioned(
                  bottom: 20,
                    left: 125,
                    child: Opacity(
                      opacity: 0.9,
                      child: InkWell(
                        onTap: (){
                          homeController.seemore.value=homeController.seemore.value?false:true;
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,2,10,2),
                            child: Center(child: Obx(()=>Row(
                              children: [
                                Text(homeController.seemore.value?"See less":"See more",style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                )),
                                Icon(homeController.seemore.value?Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down_outlined)
                              ],
                            )),),
                          ),
                ),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text("Live Quiz",style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),),
            ),
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20, // Number of items in the list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width-50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          gradient: LinearGradient(
                            colors: [AppColors.yellow,
                              AppColors.yellow.withOpacity(0.8),
                              AppColors.yellow.withOpacity(0.8),
                              AppColors.yellow.withOpacity(0.7),
                              AppColors.yellow.withOpacity(0.6),
                              AppColors.yellow.withOpacity(0.5)],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Physics Test 8",style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),),
                                  Row(
                                    children: [
                                      Icon(Icons.access_time_sharp,size: 15,),
                                      Text(" 1 hour 23 minutes",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.school_outlined,size: 15,),
                                      Text(" Andrew Flock",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("55 ",style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.blue
                                      ),),
                                      Text("Participants",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 SizedBox(
                                   height:65, width:70,
                                     child: Image.asset("assets/images/physics.png")),
                                  
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.blue
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                      child: Center(child: Text("Join now",style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white
                                      ),),),
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
            )
          ],
        ),
      ),
    ));
  }
}
