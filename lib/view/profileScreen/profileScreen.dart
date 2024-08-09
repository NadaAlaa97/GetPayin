import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_payin/viewModel/transactionsViewModel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TransactionViewModel viewModel = TransactionViewModel();
    return Scaffold(
      appBar:AppBar(
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.logout,color: Colors.black,size: 30.spMin,),
        )],
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.2),
        centerTitle: true,
        title: Text('Profile', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22.spMin),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170.h,
                  width: double.infinity,
                  decoration:BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.spMin),bottomLeft: Radius.circular(16.spMin))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                  child: Center(
                    child: Container(
                      height: 280.h,
                      width: 90.w,
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToRWV_24wxjawzn0u-4YWCbDa-DMLpDsVcdQ&s'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Amount' , style: TextStyle(color: Colors.white,fontSize: 16.spMin,
                                fontWeight: FontWeight.w400
                                ),),
                                Icon(Icons.edit,size: 25.spMin,color: Colors.white,)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14,top: 5),
                            child: Row(
                              children: [
                                Text('\$ ${viewModel.totalAmount}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                fontSize: 35.spMin
                                ),),
                                SizedBox(width: 6.w,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(7.spMin)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_drop_up,color: Colors.white,size: 20.spMin,),
                                        SizedBox(width: 2.w,),
                                        Text('5%',style: TextStyle(color: Colors.white,fontSize: 16.spMin,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 7.h,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 14, right: 15,top: 7),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.8),
                                  ),
                                  child: Center(child: Icon(Icons.person, size: 35.spMin,)),
                                ),
                              ),
                              Column(
                                children: [
                                  Text('Client Name' , style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                  fontSize: 16.spMin
                                  ),),
                                  const Text('UserEmail@gmail.com' , style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 15.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('Today',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                                        fontSize: 18.spMin
                                    ),),
                                    SizedBox(height: 5.h,),
                                    Text('- \$233',style: TextStyle(color: Colors.red.withOpacity(0.6),fontWeight: FontWeight.w500,
                                        fontSize: 20.spMin
                                    ),)
                                  ],
                                ),
                              ),
                              Text('|',style: TextStyle(color: Colors.white.withOpacity(0.6),fontWeight: FontWeight.w500,
                                  fontSize: 45.spMin
                              ),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text('This Week',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                                        fontSize: 18.spMin
                                    ),),
                                    SizedBox(height: 5.h,),
                                    Text('+ \$1,422',style: TextStyle(color: Colors.green.withOpacity(0.7),fontWeight: FontWeight.w500,
                                        fontSize: 20.spMin
                                    ),)
                                  ],
                                ),
                              ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today' , style: TextStyle(color: Colors.black, fontSize: 18.spMin,fontWeight: FontWeight.bold),),
                  Text('-\$250',style: TextStyle(color: Colors.black, fontSize: 18.spMin,fontWeight: FontWeight.bold))
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index){
              return  Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.spMin),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2,bottom: 2,right: 5,left: 3),
                        child: Icon(Icons.arrow_upward, color: Colors.red.withOpacity(0.6),size: 25.spMin,),
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Pay Spotify Subscription',style: TextStyle(
                                color: Colors.black, fontSize: 15.spMin,fontWeight: FontWeight.bold
                            ),),
                          ),
                          SizedBox(height: 4.h,),
                          Text('3:06 PM', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,
                                fontSize: 14.spMin
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('-\$150',
                          style: TextStyle(fontSize: 17.spMin,fontWeight: FontWeight.bold,
                              color:  Colors.red.withOpacity(0.7)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
