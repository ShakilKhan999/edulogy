import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/appbar_one.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    bool isFilterSelected = false;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: [
                  BoxShadow(
                    color: const Color(0x111D1617),
                    blurRadius: 40,
                    offset: const Offset(0, 10),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: searchController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: 'Search for equipment',
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
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff9ca3af),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 14.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/Filter.png',
                        height: 20,
                        width: 21,
                        color: isFilterSelected
                            ? Colors.yellow
                            : const Color(0xff9ca3af),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
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
          )
        ],
      ),
    ));
  }
}
