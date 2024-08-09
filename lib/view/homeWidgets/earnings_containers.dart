import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../viewModel/homeViewModel.dart';

class EarningsContainer extends StatelessWidget {
  const EarningsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.earnings.length,
        itemBuilder: (context, index){
          return Container(
            width: 30.w,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.primaries[index % Colors.primaries.length],
              borderRadius: BorderRadius.circular(12.spMin)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.5)
                    ),
                    child: Center(
                      child: Text(viewModel.earnings[index].substring(0,1),
                      style: TextStyle(fontSize: 25.spMin,fontWeight: FontWeight.w500,color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18.h,),
                Text(viewModel.earnings[index],style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w400,fontSize: 12.spMin
                ),),
                SizedBox(height: 4.h,),
                Text('\$ ${viewModel.totalEarnings[index].toString()}',
                style: TextStyle(color: Colors.white,fontSize: 17.spMin,fontWeight: FontWeight.w500),
                )
              ],
            ),
          );
        },
      )

          );
        }
  }

