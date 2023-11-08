import 'package:darson_stock_trainer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';

class Link extends ChangeNotifier {
  Widget link = const Home();
  changewidget(Widget value) {
    link = value;
    notifyListeners();
  }
}
