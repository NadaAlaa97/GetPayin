import 'package:flutter/material.dart';
import '../model/visaCardModel.dart';

class CardViewModel extends ChangeNotifier {
  List<VisaCardModel> cards = [
    VisaCardModel(balance: "\$25,000.40", cardNumber: "1234 **** **** 3456", name: "Client Name", expiryDate: "09/23"),
  ];

  void addCard() {
    cards.add(
      VisaCardModel(balance: "\$10,000.00", cardNumber: "4321 **** **** 6543", name: "New Client", expiryDate: "12/24"),
    );
    notifyListeners();
  }
}
