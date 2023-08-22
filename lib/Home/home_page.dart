import 'package:edulogy/Home/controller/home_controller.dart';
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
      body: Column(
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
          )
        ],
      ),
    ));
  }
}
