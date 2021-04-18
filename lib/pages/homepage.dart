

import 'package:amc_flutter_app/pages/movielistpage.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:amc_flutter_app/widgets/amccirclebutton.dart';
import 'package:amc_flutter_app/widgets/amclogomain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('./assets/imgs/amc_intro_bg.png',
              fit: BoxFit.cover
            )
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AmcLogoMain(),
                  SizedBox(height: 80),
                  Column(
                    children: [
                      Text("Welcome to", style: TextStyle(color: Colors.white, fontSize: 30)),
                      Text("Your Town Theater", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AmcCircleButton(
                        icon: Icons.touch_app,
                        label: "Purchase Tickets",
                        onTap: () {
                          Navigator.of(context).pushNamed('/movielist');
                        },
                      ),
                      SizedBox(width: 100),
                      AmcCircleButton(
                        icon: Icons.confirmation_num,
                        label: "Pick up Tickets",
                        onTap: () {
                          
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
