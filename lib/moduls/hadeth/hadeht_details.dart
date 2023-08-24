import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/settings_provider.dart';
import 'package:provider/provider.dart';

import 'hadeth_view.dart';

class HadethDetailsVeiw extends StatefulWidget {
  static const String routeName = "hadeth_view"; // Corrected routeName

  HadethDetailsVeiw({Key? key}) : super(key: key);

  @override
  State<HadethDetailsVeiw> createState() => _HadethDetailsVeiwState();
}

class _HadethDetailsVeiwState extends State<HadethDetailsVeiw> {
  String versContent = "";
  List<String> versList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as HadethContent;

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(!provider.isDark()
                  ? "assest/image/background_light.png"
                  : "assest/image/background_dark.png"),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Islami"),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(
              top: 15,
              bottom: 80,
              right: 20,
              left: 20,
            ),
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: !provider.isDark()
                    ? const Color(0XFFF8F8F8).withOpacity(0.8)
                    : const Color(0XFF141A2E).withOpacity(0.8),
                borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: !provider.isDark()
                            ? Colors.black
                            : const Color(0xFFFACC1D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 1.5,
                        color: theme.canvasColor,
                      ),
                    ),
                    Text(args.content,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: !provider.isDark()
                              ? Colors.black
                              : const Color(0xFFFACC1D),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  readFile(int index) async {
    String text = await rootBundle
        .loadString("assets/files/${index}.txt"); // Corrected path
    versContent = text;
    versList = versContent.split("");
    setState(() {});
  }
}
