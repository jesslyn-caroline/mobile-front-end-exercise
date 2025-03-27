import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  int sepatu = 0;
  int celana = 0;
  int tas = 0;
  int baju = 0;

  void addSepatu(int qty) {
    sepatu = qty;
    print(sepatu);
    notifyListeners();
  }

  void addCelana(int qty) {
    celana = qty;
    notifyListeners();
  }

  void addTas(int qty) {
    tas = qty;
    notifyListeners();
  }

  void addBaju(int qty) {
    baju = qty;
    notifyListeners();
  }

  void removeSepatu() {
    sepatu = 0;
    notifyListeners();
  }

  void removeCelana() {
    celana = 0;
    notifyListeners();
  }

  void removeTas() {
    tas = 0;
    notifyListeners();
  }

  void removeBaju() {
    baju = 0;
    notifyListeners();
  }
}