import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            child: Text('dfsdf'),
          ),
        ],
      ),
    ));
  }
}
