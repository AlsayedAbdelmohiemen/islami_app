import 'package:flutter/material.dart';
import 'package:islami_app/moduls/settings/widgets/language_bottom_sheet_setting.dart';
import 'package:islami_app/moduls/settings/widgets/theme_bottom_sheet_settings.dart';
import 'package:islami_app/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Language",
              textAlign: TextAlign.start,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: theme.canvasColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(provider.currentLanguage == "ar" ? "عربي" : "English"),
                    Icon(
                      Icons.arrow_drop_down,
                      color: theme.canvasColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            const Text(
              "ThemeMode",
              textAlign: TextAlign.start,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: theme.canvasColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.isDark() ? "Dark" : "Light",
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: theme.canvasColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showThemeBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheetSettings(),
    );
  }

  showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheetSetting());
  }
}
