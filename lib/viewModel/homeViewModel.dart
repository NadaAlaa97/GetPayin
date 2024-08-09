import 'package:flutter/material.dart';
import '../model/transactionModel.dart';

class HomeViewModel extends ChangeNotifier{
  double totalAmount = 25000.40;
  double totalIncome = 20000;
  double totalOutcome = 17000;
  
  List<Transaction> transactions = [Transaction(name: 'Adobe Illustrator', type: 'Subscription fee',
      amount: -32.00),
  Transaction(name: 'Dribbble', type: 'Subscription fee', amount: -15.00),
    Transaction(name: 'Sony Camera', type: 'Shopping fee', amount: -200.00),
    Transaction(name: 'Paypal', type: 'Salary', amount: 32.00),
  ];
  List<String> earnings = ['Upwork', 'Freepik', 'Envato'];
  List<double> totalEarnings = [3000, 3000, 2000];

}