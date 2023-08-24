import 'package:flutter/material.dart';

class SuraTitleHeaderWidget extends StatelessWidget {
  const SuraTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Divider(
          color: theme.canvasColor,
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
                "رقم السوره",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Container(
              width: 2,
              height: 40,
              color: theme.canvasColor,
            ),
            Expanded(
              child: Text(
                "اسم السوره",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        Divider(
          color: theme.canvasColor,
          thickness: 2,
        ),
      ],
    );
  }
}
