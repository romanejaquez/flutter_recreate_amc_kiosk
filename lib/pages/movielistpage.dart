import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/helpers/utils.dart';
import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:amc_flutter_app/services/movieselection.service.dart';
import 'package:amc_flutter_app/widgets/amcbottombar.dart';
import 'package:amc_flutter_app/widgets/amcheader.dart';
import 'package:amc_flutter_app/widgets/amcroundbutton.dart';
import 'package:amc_flutter_app/widgets/movielistitem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieListPage extends StatelessWidget {

  List<MovieModel> movies = Utils.getMovies();
  MovieSelectionService movieSelection;

  Widget processMovieList() {

    List<Widget> movieListContainers = [];

    List<List<MovieModel>> moviesSubList = [];
    List<MovieModel> movieSubList = [];

    int remainderMovies = movies.length % 10;

    for(int i = 0; i < movies.length; i++) {
    
      movieSubList.add(movies[i]);

      if (movieSubList.length > 0 && movieSubList.length % 10 == 0) {
        moviesSubList.add(movieSubList);
        movieSubList = [];
      }

      if(movieSubList.length == remainderMovies && i == movies.length - 1) {
        moviesSubList.add(movieSubList);
      }
    }

    moviesSubList.forEach((List<MovieModel> movieList) => {
      movieListContainers.add(
          Container(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                MovieModel singleMovie = movieList[index];

                return MovieListItem(
                  movie: singleMovie,
                  onTap: () {
                    movieSelection.selectedMovie = singleMovie;
                    Navigator.of(context).pushNamed('/moviedetails');
                  }
                );
              },
            ),
          )
      )
    });

    return Column(
      children: movieListContainers
    );
  }

  @override
  Widget build(BuildContext context) {
    
    movieSelection = Provider.of<MovieSelectionService>(context, listen: false);
    Widget scrollableMovieLists = processMovieList();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AmcHeader(),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Select a movie to get started',
                          style: TextStyle(color: Colors.white, fontSize: 25)
                        ),
                        Container(
                          child: Row(
                            children: [
                              ClipOval(
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  alignment: Alignment.center,
                                  color: AmcColors.MAIN_RED,
                                  child: Text(movies.length.toString(),
                                    style: TextStyle(color: Colors.white, fontSize: 35)
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Movies Playing Today',
                                    style: TextStyle(color: AmcColors.MAIN_RED, fontSize: 35)
                                  ),
                                  Text('Mar 29, 2021',
                                    style: TextStyle(color: Colors.white, fontSize: 20)
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 60),
                              scrollableMovieLists
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.transparent
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter
                              )
                            ),
                          )
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.transparent
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter
                              )
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                  AmcBottomBar()
                ],
              )
            ),
          )
        ],
      ),
    );
  }

}