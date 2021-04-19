import 'package:amc_flutter_app/pages/checkoutpage.dart';
import 'package:amc_flutter_app/pages/homepage.dart';
import 'package:amc_flutter_app/pages/moviedetailspage.dart';
import 'package:amc_flutter_app/pages/movielistpage.dart';
import 'package:amc_flutter_app/pages/seatselectionpage.dart';
import 'package:amc_flutter_app/pages/splashpage.dart';
import 'package:amc_flutter_app/pages/ticketselectionpage.dart';
import 'package:amc_flutter_app/services/movieselection.service.dart';
import 'package:amc_flutter_app/services/seatselection.service.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => MovieSelectionService()
        ),
        ChangeNotifierProvider(
          create: (_) => TicketOrderingService()
        ),
        ChangeNotifierProvider(
          create: (_) => SeatSelectionService()
        )
      ],
      child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Product Sans Regular'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(duration: 3, goToPage: '/home'),
        '/home':  (context) => HomePage(),
        '/movielist': (context) => MovieListPage(),
        '/moviedetails': (context) => MovieDetailsPage(),
        '/ticketselection': (context) => TicketSelectionPage(),
        '/seatselection': (context) => SeatSelectionPage(),
        '/checkout': (context) => CheckoutPage()
      }
    );
  }
}