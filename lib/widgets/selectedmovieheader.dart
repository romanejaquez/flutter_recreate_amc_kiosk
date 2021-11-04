import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:amc_flutter_app/services/movieselection.service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SelectedMovieHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    MovieSelectionService movieSelection = Provider.of<MovieSelectionService>(context, listen: false);
    MovieModel selectedMovie = movieSelection.selectedMovie!;

    return Container(
      margin: EdgeInsets.only(left: 40, right: 40, bottom: 20),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(selectedMovie.imgPath!),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: AmcColors.MAIN_RED,
                width: 5
              ),
              boxShadow: [
                BoxShadow(
                  color: AmcColors.MAIN_RED,
                  blurRadius: 10,
                  offset: Offset.zero
                )
              ]
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(selectedMovie.title!,
                  style: TextStyle(color: Colors.white, fontSize: 30)
                ),
                Text(movieSelection.getSelectMovieTime().time!,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text('Today ${DateFormat.yMMMMEEEEd().format(DateTime.now())}',
                  style: TextStyle(color: Colors.white)
                )
              ],
            ),
          ),
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
                child: Text(selectedMovie.ratedInfo!,
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
      ),
    );
  }

}