import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedLang = "en";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),

        child: Directionality(
          textDirection: _selectedLang == "en" ? TextDirection.ltr : TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("signUp".tr,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("login".tr,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              buildDropdownButton()
            ],
          ),
        ),
      ),
    );
  }

  DropdownButton<String> buildDropdownButton() {
    return DropdownButton(
      items: [
        DropdownMenuItem(
          child: Text("en".tr),
          value: "en",
        ),
        DropdownMenuItem(
          child: Text("ar".tr),
          value: "ar",
        ),
      ],
      value: _selectedLang,
      onChanged: (value) {
        setState(() {
          _selectedLang = value;
          Get.updateLocale(Locale(_selectedLang));
        });
      },
    );
  }
}
