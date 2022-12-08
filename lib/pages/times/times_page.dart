import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/times/times_provider.dart';

class PrayerTimesPage extends StatelessWidget {
  static const id = "/times_page";
  const PrayerTimesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => TimesProvider(),
      builder: (context, widget) {
        var timesProvider = Provider.of<TimesProvider>(context, listen: false);
        return Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              "Prayer Times",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading:  IconButton(
              onPressed: () => timesProvider.goBack(context),
                icon: const Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                  size: 30,
                )
            ),
            actions: [
              GestureDetector(
                onTap: () => timesProvider.goNextPage(context),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/icons/tasbeeh_ic.jpeg",
                    height: 30,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
