import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/home/home_page.dart';
import 'package:sign_up_example/pages/intro/intro_page.dart';
import 'package:sign_up_example/pages/intro/intro_provider.dart';
import 'package:sign_up_example/pages/main/main_page.dart';
import 'package:sign_up_example/pages/splash/splash_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/category_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/kalimalar/kalima_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/oyatalKursi/ayatal_course_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/tasbehlar/duo_page.dart';
import 'package:sign_up_example/pages/tasbeeh/category/zikrlar/dzikr_page.dart';
import 'package:sign_up_example/pages/tasbeeh/tasbeeh_page.dart';
import 'package:sign_up_example/pages/times/times_page.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return ChangeNotifierProvider(
            create: (context) => IntroProvider(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Muslim App",
              theme: ThemeData(
                  scaffoldBackgroundColor: Colors.white,
                  colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.black,)),
              home: const MainPage(),
              routes: {
                SplashScreen.id: (context) => const SplashScreen(),
                IntroPage.id: (context) => const IntroPage(),
                MainPage.id: (context) => const MainPage(),
                HomePage.id: (context) => const HomePage(),
                PrayerTimesPage.id: (context) => const PrayerTimesPage(),
                ZikrPage.id: (context) => const ZikrPage(),
                CategoryPage.id: (context) => const CategoryPage(),
                KalimalarPage.id: (context) => const KalimalarPage(),
                CoursePage.id: (context) => const CoursePage(),
                DuoPage.id: (context) => const DuoPage(),
                DzikrPage.id: (context) => const DzikrPage(),
              },
            ),
          );
        });
  }
}
