import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/tasbeeh/category/category_provider.dart';
import 'package:sign_up_example/view/kalimalar_view.dart';
import '../../../../service/constants.dart';

class KalimalarPage extends StatelessWidget {
  static const id = "/kalima_page";

  const KalimalarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CategoryProvider(),
        builder: (context, widget) {
          var categoryProvider = Provider.of<CategoryProvider>(context, listen: false);

          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () => categoryProvider.goBackPage(context),
                icon: const Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              backgroundColor: Colors.grey.shade200,
              title: const Text(
                "KALIMALAR",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              children: [
                Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  Center(
                    child: Image.asset("assets/images/transparent_img.png"),
                  ),
                  SizedBox(height: 60.h),
                 const Text("Bismillahir Rohmanir Rohiym",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 40.h),
                 const Text(" 1.Kalimai Toyyiba => Eng pok Kalima", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                   SizedBox(height: 40.h),
                  const KalimalarView(
                      text: Utils.kalima1,
                  ),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                      text: Utils.kalima1Tasnifi
                  ),
                  SizedBox(height: 60.h),
                  const Center(
                      child:
                      Text("Mazmuni", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima1Manosi,
                  ),
                  SizedBox(height: 40.h),
                  const Center(
                      child:
                      Text(" 2.Kalimai Shahodat => Guvohlik Kalimasi",textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima2,
                  ),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima2Tasnifi,
                  ),
                  SizedBox(height: 60.h),
                  const Center(
                       child:
                       Text("Mazmuni",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima2Manosi,
                  ),
                  SizedBox(height: 40.h),
                  const Center(
                      child:
                      Text(" 3.Kalimai Tavhid => Allohning birligiga iqrorlik kalimasi",textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima3,
                  ),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima3Tasnifi,
                  ),
                  SizedBox(height: 60.h),
                  const Center(
                       child:
                       Text("Mazmuni",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima3Manosi,
                  ),
                  SizedBox(height: 40.h),
                  const Center(
                      child:
                      Text(" 4.Kalimai Raddi Kufr => Kufrni rad etish kalimasi",textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima4,
                  ),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima4Tasnifi,
                  ),
                  SizedBox(height: 60.h),
                  const Center(
                      child:
                      Text("Mazmuni",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima4Manosi,
                  ),
                  SizedBox(height: 40.h),
                  const Center(
                      child:
                      Text(" 5.Kalimai Istig'for => Gunoh Kechirilishini so'rash kalimasi",textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima5,
                  ),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima5Tasnifi,
                  ),
                  SizedBox(height: 60.h),
                  const Center(
                      child:
                      Text("Mazmuni",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima5Manosi,
                  ),
                  SizedBox(height: 40.h),
                  const Center(
                      child:
                      Text(" 6.Kalimai Tamjid => Ulug'lash kalimasi",textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima6,
                  ),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima6Tasnifi,
                  ),
                  SizedBox(height: 60.h),
                  const Center(
                      child:
                      Text("Mazmuni",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),)),
                  SizedBox(height: 40.h),
                  const KalimalarView(
                    text: Utils.kalima6Manosi,
                  ),
                ],
              ),
             ]
            ),
          );
        });
  }
}
