

import 'package:amc_flutter_app/widgets/amccirclebutton.dart';
import 'package:amc_flutter_app/widgets/amclogomain.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned.fill(
            child: Image.asset('./assets/imgs/amc_intro_bg.png',
              fit: BoxFit.cover
            )
          ),
          // center container
          Positioned.fill(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // main logo
                  AmcLogoMain(),
                  SizedBox(height: 80),
                  // title
                  Column(
                    children: [
                      Text("Welcome to", style: TextStyle(color: Colors.white, fontSize: 30)),
                      Text("Your Town Theater", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 100),
                  // button row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // circle btn widget
                      AmcCircleButton(
                        icon: Icons.touch_app,
                        label: "Purchase Tickets",
                        onTap: () {
                          Navigator.of(context).pushNamed('/movielist');
                        },
                      ),
                      SizedBox(width: 100),
                      // circle btn widget
                      AmcCircleButton(
                        icon: Icons.confirmation_num,
                        label: "Pick up Tickets",
                        onTap: () {
                          // ignore: todo
                          // TODO: no implementation yet
                        },
                      ),
                    ],
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
