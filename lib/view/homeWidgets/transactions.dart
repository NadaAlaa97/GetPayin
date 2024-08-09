import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../viewModel/homeViewModel.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
          child: Text('Today', style: TextStyle(color: Colors.grey,
          fontWeight: FontWeight.w500,fontSize: 18.spMin
          ),),
        ),
        SizedBox(height: 5.h,),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: viewModel.transactions.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.spMin),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2,bottom: 2),
                      child: Container(
                        height: 40.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.5)
                        ),
                        child: Center(child: Icon(icon(viewModel.transactions[index].type),
                        color:  Colors.primaries[index % Colors.primaries.length],
                          size: 25.spMin,
                        )),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(viewModel.transactions[index].name,style: TextStyle(
                            color: Colors.black, fontSize: 17.spMin,fontWeight: FontWeight.bold
                          ),),
                        ),
                        SizedBox(height: 4.h,),
                        Text(viewModel.transactions[index].type,
                        style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,
                        fontSize: 14.spMin
                        ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('\$ ${viewModel.transactions[index].amount.toString()}',
                      style: TextStyle(fontSize: 17.spMin,fontWeight: FontWeight.bold,
                      color: viewModel.transactions[index].amount <0 ? Colors.red.withOpacity(0.7) : Colors.green.withOpacity(0.7)
                      ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        )
      ],
    );

  }
  IconData icon(String type) {
    switch (type) {
      case 'Subscription fee':
        return Icons.payment;
      case 'Shopping fee':
        return Icons.shopping_bag_outlined;
      case 'Salary':
        return Icons.credit_card;
      default:
        return Icons.payment;
    }
}}
