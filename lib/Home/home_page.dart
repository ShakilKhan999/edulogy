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
      appBar: appBarOne(),
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
        ],
      ),
    ));
  }
}
