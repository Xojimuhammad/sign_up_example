import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/home/home_page.dart';
import 'package:sign_up_example/pages/kibla/kibla_page.dart';
import 'package:sign_up_example/pages/kuran/kuran_page.dart';
import 'package:sign_up_example/pages/main/main_provider.dart';
import 'package:sign_up_example/pages/quiz/quiz_page.dart';
import 'package:sign_up_example/pages/times/times_page.dart';

class MainPage extends StatelessWidget {
  static const id = "/main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      builder: (context, widget) {
        var mainProvider = Provider.of<MainProvider>(context, listen: false);

        return Scaffold(
          body: PageView(
            onPageChanged: mainProvider.onPageChanged,
            controller: mainProvider.pageController,
            children: const [
              HomePage(),
              PrayerTimesPage(),
              KiblaPage(),
              BookPage(),
              QuizPage(),
            ],
          ),

          // bottom navigation bar
          bottomNavigationBar: Consumer<MainProvider>(
            builder: (context, main, child) {
              return BottomNavigationBar(
                selectedItemColor: Colors.black,
                selectedIconTheme: const IconThemeData(
                  size: 40
                ),
                currentIndex: main.currentPage,
                onTap: main.onTapNavigatorIcon,
                items: const [

                   BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home, color: Colors.black),
                    label: "Home",
                  ),
                   BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.time, color: Colors.black),
                    label: "Prayer Times",
                  ),
                   BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.compass, color: Colors.black,),
                    /*Image.asset("assets/icons/tasbeeh_ic.jpeg", height: 60, width: 60,),*/
                    label: "Kaaba",
                  ),
                   BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.book,color: Colors.black,),
                    label: "Quran",
                  ),
                   BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.question_circle,color: Colors.black,),
                    label: "Quiz",
                  ),
                ],
              );
            }
          ),
        );
      }
    );
  }
}
