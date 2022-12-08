import 'package:flutter/material.dart';
import 'package:sign_up_example/pages/main/main_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/category_page.dart';


class TimesProvider extends ChangeNotifier{

  void goNextPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, CategoryPage.id);
    notifyListeners();
  }

  void goBack(BuildContext context) {
    Navigator.pushReplacementNamed(context, MainPage.id);
    notifyListeners();
  }
}