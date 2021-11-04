import 'package:amc_flutter_app/models/movieseat.model.dart';

class MovieAuditoriumModel {

  int rows = 8;
  int cols = 8;
  String? label;
  String seatLabels = "ABCDEFGH";
  int accessibleRow = 3;

  List<List<MovieSeat>> seats = [];

  MovieAuditoriumModel({
    this.rows = 8,
    this.cols = 8
  }) {
    
    seats = [];
    for(int i = 0; i < rows; i++) {

      List<MovieSeat> seatRow = [];
      for(int j = 0; j < cols; j++) {
        seatRow.add(
          MovieSeat(
            seatLabel: seatLabels[i] + j.toString(),
            isAssisted: i == 3,
            isSelected: false
          )
        );
      }

      seats.add(seatRow);
    }

  }
}