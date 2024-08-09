import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowSection extends StatelessWidget {
  const RowSection({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(color: Colors.black,fontSize: 20.spMin,fontWeight: FontWeight.bold),),
          Text('See All', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14.spMin),)
        ],
      ),
    );
  }
}
