import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../viewModel/homeViewModel.dart';

class IncomeOutcomeContainer extends StatelessWidget {
  const IncomeOutcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        height: 90.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.spMin),
          image: const DecorationImage(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrSy67Dqj2ejLNeJA9I44-9QS8b16dKCtTelrqQO7NskppxQt_pH2SXGMv8NkbIqnmVk8&usqp=CAU'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 15),
                child: Row(
                  children: [
                    Icon(Icons.arrow_downward,color: Colors.green,size: 25.spMin,),
                    SizedBox(width: 3.w,),
                    Column(
                      children: [
                        Text('Income', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14.spMin),),
                        SizedBox(height: 4.h,),
                        Text('\$ ${viewModel.totalIncome}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.spMin),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 5.w,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('|', style: TextStyle(color: Colors.grey, fontSize: 40.spMin),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_upward,color: Colors.red.withOpacity(0.8),size: 25.spMin,),
                    SizedBox(width: 3.w,),
                    Column(
                      children: [
                        Text('Outcome', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14.spMin),),
                        SizedBox(height: 4.h,),
                        Text('\$ ${viewModel.totalOutcome}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.spMin),),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
