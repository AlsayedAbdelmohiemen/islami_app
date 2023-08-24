import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/quarn/verses_widget.dart';
import 'package:islami_app/moduls/quarn/widget/suraName_widget.dart';
import 'package:islami_app/settings_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsView extends StatefulWidget {
  static const String routeName = "sura_detail";

  SuraDetailsView({super.key});

  @override
  State<SuraDetailsView> createState() => _SuraDetailsViewState();
}

class _SuraDetailsViewState extends State<SuraDetailsView> {
  String versContent = "";

  List<String> versList = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetails;

    if (versContent.isEmpty) readFile(args.suraIndex);
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
            margin: EdgeInsets.only(top: 25, bottom: 80, left: 30, right: 30),
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: !provider.isDark()
                  ? const Color(0XFFF8F8F8).withOpacity(0.8)
                  : const Color(0XFF141A2E).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("سوره ${args.suraName}",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: !provider.isDark()
                              ? Colors.black
                              : const Color(0xFFFACC1D),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.play_circle_fill_sharp,
                        color: !provider.isDark()
                            ? Colors.black
                            : const Color(0xFFFACC1D)),
                  ],
                ),
                Divider(
                  color: Color(0xFF242424),
                  thickness: 1.5,
                  indent: 40,
                  endIndent: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        VersesWidget(versList[index], index + 1),
                    itemCount: versList.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  readFile(int index) async {
    String text = await rootBundle.loadString("assest/files/${index + 1}.txt");

    versContent = text;
    versList = versContent.trim().split("\n");
    setState(() {});
  }
}
