import 'package:flutter/material.dart';
import 'package:sign_up_example/pages/tasbeeh/category/category_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/kalimalar/kalima_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/oyatalKursi/ayatal_course_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/tasbehlar/duo_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/zikrlar/dzikr_page.dart';
import 'package:sign_up_example/pages/times/times_page.dart';

class CategoryProvider extends ChangeNotifier {

  void goNextPage(BuildContext context){
    Navigator.pushReplacementNamed(context, KalimalarPage.id);
    notifyListeners();
  }

  void goNext(BuildContext context) {
    Navigator.pushReplacementNamed(context, CoursePage.id);
    notifyListeners();
  }

  void next(BuildContext context) {
    Navigator.pushReplacementNamed(context, DuoPage.id);
    notifyListeners();
  }

  void nextScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, DzikrPage.id);
    notifyListeners();
  }

  void goBackPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, CategoryPage.id);
    notifyListeners();
  }

  void goBack(BuildContext context) {
    Navigator.pushReplacementNamed(context, PrayerTimesPage.id);
    notifyListeners();
  }
}