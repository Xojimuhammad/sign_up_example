import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/tasbeeh/category/category_provider.dart';
import '../../../../service/constants.dart';

class CoursePage extends StatelessWidget {
  static const id = "/course_page";

  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CategoryProvider(),
        builder: (context, widget) {
          var categoryProvider = Provider.of<CategoryProvider>(context, listen: false);

          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.grey.shade200,
              leading: IconButton(
                onPressed: () => categoryProvider.goBackPage(context),
                icon: const Icon(CupertinoIcons.arrow_left, color: Colors.black, size: 30,),),
              title: const Text("OYATAL KURSIY", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              children:[
                Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  Center(
                    child: Image.asset("assets/images/transparent_img.png", fit: BoxFit.contain,),
                  ),
                  const SizedBox(height: 40),
                  const Text("Bismillahir Rohmanir Rohiym", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.all(12),
                    child:  const Center(
                      child: Text(
                        Utils.oyatalKursi,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.all(12),
                    child:  const Center(
                      child: Text(
                        Utils.courseTasnifi,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text("Mazmuni", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.all(12),
                    child:  const Center(
                      child: Text(
                        Utils.manosi,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
             ]
            ),
          );
        }
    );
  }
}
