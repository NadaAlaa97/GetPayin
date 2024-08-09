import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_payin/view/walletScreen/walletWidget/row_text_icon.dart';
import 'package:get_payin/view/walletScreen/walletWidget/transactionsList.dart';
import 'package:provider/provider.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../viewModel/visaCardViewModel.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardViewModel(),
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.withOpacity(0.01),
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
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Wallet', style: TextStyle(fontSize: 22.spMin, fontWeight: FontWeight.bold),),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.more_vert, size: 35.spMin, color: Colors.black,),
            )
          ],
        ),
        body: Consumer<CardViewModel>(
          builder: (context, viewModel, child) {
            return Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(12),
                          dashPattern: const [8, 4],
                          color: Colors.grey,
                          strokeWidth: 2,
                          child: SizedBox(
                            width: 15.w,
                            height: 195.h,
                            child: Center(
                              child: IconButton(
                                icon: const Icon(Icons.add, size: 40, color: Colors.black),
                                onPressed: () {
                                  viewModel.addCard();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      ...viewModel.cards.map((card) => Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 80.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 130.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                      color: Colors.primaries[viewModel.cards.indexOf(card) % Colors.primaries.length],
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 6,left: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text('Total Balance',
                                            style: TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(height: 3),
                                          Text(card.balance,
                                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 8.h,),
                                          Text(card.cardNumber,
                                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70.h,
                                    width: 80.w,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 6,bottom: 5),
                                                child: Text('Name',
                                                  style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.6),fontWeight: FontWeight.w400),
                                                ),
                                              ),
                                              Text(card.name,
                                                style: const TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 6),
                                            child: Column(
                                              children: [
                                                Text('Exp',
                                                  style:  TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.6)),
                                                ),
                                                SizedBox(height: 5.h,),
                                                Text(card.expiryDate,
                                                  style: const TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 16,
                                top: 16,
                                child: Container(
                                  width: 10.w,
                                  height: 7.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.spMin),
                                    color: Colors.black,
                                    shape: BoxShape.rectangle
                                  ),
                                  child: const Center(child: Text('VISA',style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                            ],
                          ),

                        ),
                      )).toList(),
                    ],
                  ),
                ),
               const RowTextIcon(),
                const TransactionsList()
              ],
            );
          },
        ),
      ),
    );
  }
}