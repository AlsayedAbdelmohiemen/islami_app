import 'package:flutter/material.dart';
import 'package:islami_app/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assest/image/radio_header.png"),
            SizedBox(
              height: 10,
            ),
            Text("اذاعه القراّن الكريم",
                style: TextStyle(
                  fontSize: 25,
                )),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  !provider.isDark()
                      ? "assest/image/play1.png"
                      : "assest/image/play2.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
