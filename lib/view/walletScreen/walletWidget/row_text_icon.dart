import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowTextIcon extends StatelessWidget {
  const RowTextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Transactions', style: TextStyle(color: Colors.black,fontSize: 20.spMin, fontWeight: FontWeight.bold
          ),),
          Icon(Icons.tune, size: 20.spMin,color: Colors.black,)
        ],
      ),
    );
  }
}
