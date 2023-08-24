import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth/hadeht_details.dart';

import 'hadeth_title_widget.dart';
// Import the correct package

class HadethContent {
  String title;
  String content;

  HadethContent(this.title, this.content);
}

class HadethView extends StatefulWidget {
  HadethView({Key? key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (allHadeth.isEmpty) readFile();

    return Center(
        child: Container(
      child: Column(
        children: [
          Image.asset("assest/image/hadeth_header.png"),
          Divider(
            color: theme.canvasColor,
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          Text(
            "الاحاديث",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          Divider(
            color: theme.canvasColor,
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetailsVeiw.routeName,
                        arguments: allHadeth[index]);
                  },
                  child: HadethTitleWidget(
                    allHadeth[index].title,
                  )),
              itemCount: allHadeth.length,
            ),
          ),
        ],
      ),
    ));
  }

  readFile() async {
    List<HadethContent> hadethList = [];
    String hadethText = await rootBundle
        .loadString("assest/files/ahadeth .txt"); // Corrected path

    List<String> allHadethList = hadethText.split("#");

    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");

      if (indexOfFirstLine != -1) {
        String title = singleHadeth.substring(0, indexOfFirstLine);
        String content = singleHadeth.substring(indexOfFirstLine + 1);
        HadethContent allHadethContent = HadethContent(title, content);
        hadethList.add(allHadethContent);
      }
    }
    allHadeth = hadethList;
    setState(() {});
  }
}
