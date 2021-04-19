import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/helpers/amc-icon.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatelessWidget {
  int duration = 0;
  String goToPage;

  SplashPage({ this.goToPage, this.duration });

  @override 
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.of(context).pushNamed(this.goToPage);
    });

    return Scaffold(
      body: Container(
        color: AmcColors.MAIN_RED,
        alignment: Alignment.center,
        child: Icon(
          AmcIcon.amcLogo,
          color: Colors.white,
          size: 300
        )
      )
    );
  }
}