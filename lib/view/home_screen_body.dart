import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'homeWidgets/RowSection.dart';
import 'homeWidgets/balanceContainer.dart';
import 'homeWidgets/earnings_containers.dart';
import 'homeWidgets/income_outcome_container.dart';
import 'homeWidgets/transactions.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.grey.withOpacity(0.1) ,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow.withOpacity(0.8),
            ),
            height: 15.h,
            width: 15.w,
            child: Center(child: Icon(Icons.person, size: 30.spMin,)),
          ),
        ),
        title: Column(
          children: [
            Text('Good Morning!' , style: TextStyle(fontSize: 15.spMin,fontWeight: FontWeight.w400),),
            SizedBox(height: 4.h,),
            Text('   Client Name' , style: TextStyle(fontSize: 20.spMin,fontWeight: FontWeight.bold),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none, size: 30.spMin,color: Colors.black,),
          )
        ],
      ),

      body: Container(
        height: double.infinity,
        color: Colors.grey.withOpacity(0.1),
        child: const SingleChildScrollView(
            child: Column(
              children: [
                BalanceContainer(),
                IncomeOutcomeContainer(),
                RowSection(text: 'Earnings',),
                EarningsContainer(),
                RowSection(text: 'Transactions'),
                Transactions(),
              ],
            ),
          ),
          ),
    );
  }
}
