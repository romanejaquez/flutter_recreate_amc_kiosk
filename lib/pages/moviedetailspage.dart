import 'dart:ui';

import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:amc_flutter_app/services/movieselection.service.dart';
import 'package:amc_flutter_app/widgets/amcbottombar.dart';
import 'package:amc_flutter_app/widgets/amcheader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    MovieSelectionService movieService = Provider.of<MovieSelectionService>(context, listen: false);
    MovieModel selectedMovie = movieService.selectedMovie;
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(selectedMovie.imgPath), fit: BoxFit.cover),
                ),
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    ),
                  ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AmcHeader(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 400,
                            height: 650,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(selectedMovie.imgPath),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(selectedMovie.title,
                                  style: TextStyle(color: Colors.white, fontSize: 40)
                                ),
                                SizedBox(height: 20),
                                Text(selectedMovie.description,
                                  style: TextStyle(color: Colors.white, fontSize: 20)
                                ),
                                SizedBox(height: 40),
                                Column(
                                  children: [
                                    Text("CAST",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                    Text(selectedMovie.castInfo),
                                  ],
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
                                        style: TextStyle(color: Colors.white, fontSize: 30)
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text('${selectedMovie.duration}',
                                      style: TextStyle(color: Colors.white, fontSize: 30)
                                    )
                                  ],
                                )
                              ],
                            )
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      Text('AVAILABLE TIMES',
                        style: TextStyle(color: Colors.white, fontSize: 20)
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: GridView.count(
                          childAspectRatio: 3,
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          children: List.generate(selectedMovie.availableTimes.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                selectedMovie.availableTimes[index].isSelected = true;
                                Navigator.of(context).pushNamed('/ticketselection');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 20, bottom: 20),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2
                                  )
                                ),
                                child: Text('${selectedMovie.availableTimes[index].time}',
                                  style: TextStyle(color: Colors.white, fontSize: 20)
                                ),
                              ),
                            );
                          })
                        ),
                      )
                    ],
                  ),
                ),
              ),
              AmcBottomBar()
            ]
          )
        ],
      )
    );
  }
  
}