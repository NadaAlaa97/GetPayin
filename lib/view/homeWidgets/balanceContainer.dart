import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_payin/viewModel/homeViewModel.dart';

class BalanceContainer extends StatelessWidget{
  const BalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 180.h,
        width: 200.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.spMin),
                image: const DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrSy67Dqj2ejLNeJA9I44-9QS8b16dKCtTelrqQO7NskppxQt_pH2SXGMv8NkbIqnmVk8&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 7),
              child: Text('  Total Balance', style: TextStyle(color: Colors.white, fontSize: 16.spMin,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(' \$${viewModel.totalAmount}', style: TextStyle(color: Colors.white, fontSize: 40.spMin, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('My Wallet', style: TextStyle(color: Colors.white,fontSize: 17.spMin,fontWeight: FontWeight.w400),),
                SizedBox(width: 3.w,),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward,color: Colors.black,size: 25.spMin,),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}