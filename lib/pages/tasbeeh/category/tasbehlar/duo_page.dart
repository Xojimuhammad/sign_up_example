import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up_example/pages/tasbeeh/category/category_provider.dart';

class DuoPage extends StatelessWidget {
  static const id = "duo_page";

  const DuoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CategoryProvider(),
        builder: (context, widget) {
          var categoryProvider = Provider.of<CategoryProvider>(context, listen: false);
          return  Scaffold(
            backgroundColor: Colors.orange,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.grey.shade200,
              leading: IconButton(
                onPressed: () => categoryProvider.goBackPage(context),
                icon: const Icon(
                    CupertinoIcons.arrow_left,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              title: const Text(
                  "Tasbehlar",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        });
  }
}
