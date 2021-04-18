import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:amc_flutter_app/services/movieselection.service.dart';
import 'package:amc_flutter_app/services/ticketordering.service.dart';
import 'package:amc_flutter_app/widgets/amcbottombar.dart';
import 'package:amc_flutter_app/widgets/amcheader.dart';
import 'package:amc_flutter_app/widgets/amcroundbutton.dart';
import 'package:amc_flutter_app/widgets/ticketselectiontypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TicketSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    MovieSelectionService movieService = Provider.of<MovieSelectionService>(context, listen: false);
    MovieModel selectedMovie = movieService.selectedMovie;
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AmcHeader(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Selection',
                        style: TextStyle(color: Colors.white, fontSize: 30)
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: AmcColors.MAIN_RED,
                                width: 10
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AmcColors.MAIN_RED,
                                  blurRadius: 20,
                                  offset: Offset.zero
                                )
                              ],
                              image: DecorationImage(
                                image: AssetImage(selectedMovie.imgPath),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(selectedMovie.title,
                                style: TextStyle(color: Colors.white, fontSize: 40)
                              ),
                              Text(selectedMovie.availableTimes[0].time,
                                style: TextStyle(color: Colors.white, fontSize: 25)
                              ),
                              Text('Today ${DateFormat.yMMMMEEEEd().format(DateTime.now())}',
                                style: TextStyle(color: Colors.white)
                              ),
                              SizedBox(height: 40),
                              Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2
                                        )
                                      ),
                                      child: Text(selectedMovie.ratedInfo,
                                        style: TextStyle(color: Colors.white, fontSize: 20)
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text('${selectedMovie.duration}',
                                      style: TextStyle(color: Colors.white, fontSize: 20)
                                    )
                                  ],
                                )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.confirmation_num, color: AmcColors.MAIN_RED, size: 40),
                          SizedBox(width: 10),
                          Text('How many tickets?',
                            style: TextStyle(color: Colors.white, fontSize: 30)
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      TicketSelectionTypes()
                    ],
                  ),
                )
              ),
              AmcBottomBar(
                optionalButton: Consumer<TicketOrderingService>(
                  builder: (context, tService, child) {
                    return tService.getTotalNumberOfTickets() > 0 ? AmcRoundButton(
                      label: 'SELECT SEATS',
                      onTap: () {
                        // proceed to the seats selection page
                        Navigator.of(context).pushNamed('/seatselection');
                      }) : SizedBox(width: 0);
                  }
              ))
            ]
      )
    );
  }

}