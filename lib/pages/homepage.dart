

import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/helpers/amc-icon.dart';
import 'package:amc_flutter_app/widgets/amccirclebutton.dart';
import 'package:amc_flutter_app/widgets/amclogomain.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController animation;
  AnimationController slideAnim;
  AnimationController fadeAnim;

  @override
  void initState() {

    animation = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this
    );

    slideAnim = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this
    );

    fadeAnim = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this
    );

    Future.delayed(const Duration(seconds: 1), () {
      animation.forward();
    });

    Future.delayed(const Duration(milliseconds: 2500), () {
      slideAnim.forward();
    });

    Future.delayed(const Duration(milliseconds: 3000), () {
      fadeAnim.forward();
    });
  }

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
          
          ScaleTransition(
            alignment: Alignment.center,
            scale: Tween(
              begin: 1.0,
              end: 0.0,
            )
            .animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut
            )),
            child: Align(
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 3.5,
                child: Container(
                  
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AmcColors.MAIN_RED,
                    borderRadius: BorderRadius.circular(500)
                  ),
                
              )
            )
          )
        ),

          SlideTransition(
            position: Tween(
              begin: const Offset(0,0),
              end: Offset(0,-0.25)
            ).animate(CurvedAnimation(
              parent: slideAnim,
              curve: Curves.easeInOut
            )),
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              child: AmcLogoMain()
            )
          ),

          // center container
          Positioned.fill(
            child: Center(
              child: FadeTransition(
                opacity: Tween(
                  begin: 0.0,
                  end: 1.0
                ).animate(
                  CurvedAnimation(parent: fadeAnim, curve: Curves.easeInOut)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 180),
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
              )
            ),
          ),

        ],
      ),
    );
  }
}
