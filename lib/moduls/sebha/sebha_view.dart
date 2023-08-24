import 'package:flutter/material.dart';
import 'package:islami_app/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  double turns = 0.0;
  int counter = 0;
  List<String> remembrances = [
    'سبحان اللة ',
    'اللة اكبر ',
    'استغقر الله',
    'لا الة الا اللة',
  ];
  String title = 'سبحان اللة';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsetsDirectional.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                !provider.isDark()
                    ? 'assest/image/head of sebha_light.png'
                    : "assest/image/head of sebha.png",
                height: 100,
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                  top: 65,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      turns += 1 / 1;
                    });
                  },
                  child: AnimatedRotation(
                      turns: turns,
                      duration: Duration(seconds: 2),
                      child: Image.asset(
                        !provider.isDark()
                            ? 'assest/image/body of sebha_light.png'
                            : "assest/image/body of sebha.png",
                        height: 200,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'عدد التسيبحات',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFB9AA91),
                borderRadius: BorderRadiusDirectional.circular(10.0)),
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  CounterSabha();
                  turns += 1 / 1;
                });
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(20.0))),
                  backgroundColor:
                      MaterialStatePropertyAll(theme.primaryColor)),
              child: Text(
                '${title}',
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }

  void CounterSabha() {
    counter += 1;

    if (counter < 33) {
      title = remembrances[0];
    } else if (counter < 66) {
      title = remembrances[1];
    } else if (counter < 99) {
      title = remembrances[2];
    } else if (counter < 129) {
      title = remembrances[3];
    } else {
      counter = 0;
      setState(() {});
    }
  }
}
