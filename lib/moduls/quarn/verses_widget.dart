import 'package:flutter/material.dart';
import 'package:islami_app/settings_provider.dart';
import 'package:provider/provider.dart';

class VersesWidget extends StatelessWidget {
  String content;
  int index;

  VersesWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: Text("$content ($index)",
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: !provider.isDark() ? Colors.black : const Color(0xFFFACC1D),
          )),
    );
  }
}
