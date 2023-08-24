import 'package:flutter/material.dart';
import 'package:islami_app/moduls/quarn/sura_detils_view.dart';

class SuraNameWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;

  const SuraNameWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetailsView.routeName,
          arguments: SuraDetails(suraName, suraNumber),
        );
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(" ${suraNumber + 1}",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
            ),
            Container(
              width: 2,
              height: 40,
              color: theme.canvasColor,
            ),
            Expanded(
              child: Text(suraName,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraDetails {
  String suraName;
  int suraIndex;

  SuraDetails(this.suraName, this.suraIndex);
}
