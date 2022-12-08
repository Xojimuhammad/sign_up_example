import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/intro/intro_provider.dart';
import '../../view/indicator_view.dart';
import '../../view/make_view.dart';


class IntroPage extends StatelessWidget {
  static const String id = 'intro_page';

  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ChangeNotifierProvider(
          create: (context) => IntroProvider(),
          builder: (context, widget) {
            var introProvider =
                Provider.of<IntroProvider>(context, listen: false);
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  onPageChanged: introProvider.onPageChanged,
                  controller: introProvider.pageController,
                  children: const [

                    // text & image
                    MakePage(
                      title: 'Faith',
                      subtitle: "Confessing with the\n tongue and affirming\n with the heart",
                      image: 'assets/images/iyman_img.png',
                      key: PageStorageKey(0),
                    ),
                    MakePage(
                        title: 'Prayer',
                        subtitle: "Obligatory for\n every Muslim",
                        image: 'assets/images/namaz_img.jpeg',
                        key: PageStorageKey(1)),
                    MakePage(
                        title: 'Fasting',
                        subtitle: "Fasting during the\n month of Ramadan\n is obligatory for\n Muslim adults",
                        image: 'assets/images/ramadan_img.jpeg',
                        key: PageStorageKey(2)),
                    MakePage(
                        title: 'Zakat',
                        subtitle: "charity given from\n wealth and income",
                        image: 'assets/images/zakat_img.jpeg',
                        key: PageStorageKey(3)),
                    MakePage(
                        title: 'Hajj',
                        subtitle: "Hajj is obligatory for\n every Muslim once\n in his life",
                        image: 'assets/images/hajj_img.png',
                        key: PageStorageKey(4)),
                  ],
                ),
                Consumer<IntroProvider>(builder: (context, intro, child) {
                  return Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height / 21.1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            // indicator
                            IntroIndicator(
                              isActive:
                                  introProvider.currentPage == 0 ? true : false,
                              isNext:
                                  introProvider.currentPage != 2 ? true : false,
                            ),
                            IntroIndicator(
                              isActive:
                                  introProvider.currentPage == 1 ? true : false,
                              isNext:
                                  introProvider.currentPage != 2 ? true : false,
                            ),
                            IntroIndicator(
                              isActive:
                                  introProvider.currentPage == 2 ? true : false,
                              isNext:
                                  introProvider.currentPage != 2 ? true : false,
                            ),
                            IntroIndicator(
                              isActive:
                                  introProvider.currentPage == 3 ? true : false,
                              isNext:
                                  introProvider.currentPage != 2 ? true : false,
                            ),
                            IntroIndicator(
                              isActive:
                                  introProvider.currentPage == 4 ? true : false,
                              isNext:
                                  introProvider.currentPage != 2 ? true : false,
                            ),
                          ],
                        ),

                        // button
                        GestureDetector(
                          onTap: () => introProvider.onButtonTap(
                              introProvider.currentPage, context),
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade700,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: introProvider.currentPage != 4
                                  ? const Text(
                                      "Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  : const Text(
                                      "Get Started",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ],
            );
          }),
    );
  }
}
