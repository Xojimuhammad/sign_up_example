import 'package:flutter/material.dart';
import 'package:sign_up_example/pages/main/main_page.dart';

class IntroProvider extends ChangeNotifier{
  PageController pageController = PageController(keepPage: true);
  int currentPage = 0;

  void onButtonTap(int index, context) {
    currentPage = index;
    currentPage != 4 ?
    pageController.animateToPage(index + 1,duration: const Duration(milliseconds: 500),curve: Curves.easeInOutBack):Navigator.pushNamed(context, MainPage.id);
    notifyListeners();
  }

  void onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }
}