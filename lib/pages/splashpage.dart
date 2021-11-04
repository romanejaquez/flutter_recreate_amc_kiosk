import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/helpers/amc-icon.dart';
import 'package:amc_flutter_app/pages/homepage.dart';
import 'package:amc_flutter_app/widgets/amclogomain.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashPage extends StatelessWidget {
  int duration = 0;
  String goToPage;

  SplashPage({ this.goToPage, this.duration });

  @override 
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.of(context).
      pushNamed(this.goToPage);
      //   PageRouteBuilder(pageBuilder: (context, animation1, animation2) => HomePage(),
      //   transitionDuration: Duration.zero
      // ));
      //pushNamed(this.goToPage);
    });

    return Scaffold(
      backgroundColor: AmcColors.MAIN_RED,
      body: Stack(
        children: [
          Center(
            child: AmcLogoMain(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 300),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white.withOpacity(0.5)),
                  )
                )
              )
            )
        ],
      )
    );
  }
}