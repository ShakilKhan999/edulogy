import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:edulogy/Home/home_page.dart';
import 'package:edulogy/QApage.dart';
import 'package:edulogy/const/colors.dart';
import 'package:edulogy/course_page.dart';
import 'package:edulogy/mock_page.dart';
import 'package:edulogy/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 2;

  // List of screens
  final List<Widget> _screens = [
    CoursePage(), // Replace with your actual screen instances
    QAPage(),
    HomePage(),
    MockPage(),
    QuizPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Show the current screen based on index
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: Colors.transparent,
        color:  AppColors.blue,
        animationDuration: Duration(milliseconds: 300),
        items: [
          ImageIcon(const AssetImage('assets/images/course.png',),size: 30,color: AppColors.backgroundcolor,),
          ImageIcon(const AssetImage('assets/images/doubt.png'),size: 30,color: AppColors.backgroundcolor),
          Icon(Icons.home,size: 40,color: AppColors.backgroundcolor,),
          ImageIcon(const AssetImage('assets/images/exam.png'),size: 30,color: AppColors.backgroundcolor),
          ImageIcon(const AssetImage('assets/images/quiz.png'),size: 30,color: AppColors.backgroundcolor),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
