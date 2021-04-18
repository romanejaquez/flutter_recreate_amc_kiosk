import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:flutter/material.dart';

class MovieListItem extends StatelessWidget {

  MovieModel movie;
  Function onTap;

  MovieListItem({ this.movie, this.onTap });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(movie.imgPath),
                    fit: BoxFit.cover
                  )
                ),
                width: 250,
                height: 380
              ),
              SizedBox(height: 10),     
              Container(
                width: 240,
                height: 50,
                child: Text(movie.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20
                ),
                decoration: BoxDecoration(
                  color: AmcColors.MAIN_RED,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Text(
                  '${movie.availableTimes[0].time}',
                  style: TextStyle(
                    color: Colors.white,
                  )
                )
              )
            ],
          )
        )
    );
  }

}