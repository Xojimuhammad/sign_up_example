import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/tasbeeh/category/category_provider.dart';
import 'package:sign_up_example/view/category_view.dart';

class CategoryPage extends StatelessWidget {
  static const id = "/category_page";

  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CategoryProvider(),
        builder: (context, widget) {
          var categoryProvider = Provider.of<CategoryProvider>(context, listen: false);

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () => categoryProvider.goBack(context),
                icon: const Icon(CupertinoIcons.arrow_left,color: Colors.black,size: 30,),
              ),
              centerTitle: true,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.sun_max, color: Colors.black, size: 27,),
                ),
              ],
              backgroundColor: Colors.grey.shade200,
              title: const Text("Kalimalar Va Duolar", style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),
            ),

            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Center(
                    child: Image.asset("assets/images/transparent_img.png", fit: BoxFit.contain,),
                  ),
                  const SizedBox(height: 40),
                  const Center(
                    child: Text(
                      "Bismillahir Rohmanir Rohiym",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // category buttons
                   GestureDetector(
                     onTap: () => categoryProvider.goNextPage(context),
                     child: const CategoryView(
                        text: " 6 TA DINIY KALIMA",
                  ),
                   ),
                   GestureDetector(
                     onTap: () => categoryProvider.goNext(context),
                     child: const CategoryView(
                        text: " OYATAL KURSIY",
                  ),
                   ),
                   GestureDetector(
                     onTap: () => categoryProvider.next(context),
                     child: const CategoryView(
                        text: " TASBEHLAR",
                  ),
                   ),
                   GestureDetector(
                          onTap: () => categoryProvider.nextScreen(context),
                          child: const CategoryView(
                            text: " ZIKRLAR",
                  ),
                        ),
                ],
              )
            ),
          );
        }
    );
  }
}
