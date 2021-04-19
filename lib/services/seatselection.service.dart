import 'package:amc_flutter_app/models/movieauditorium.model.dart';
import 'package:amc_flutter_app/models/movieseat.model.dart';
import 'package:flutter/material.dart';

class SeatSelectionService extends ChangeNotifier {

  List<MovieSeat> _selectedSeats = [];
  MovieAuditoriumModel _auditoriumModel = MovieAuditoriumModel();

  List<MovieSeat> get selectedSeats => _selectedSeats;
  MovieAuditoriumModel get auditorium => _auditoriumModel;

  void resetSeatSelection() {
    _selectedSeats = [];
    _auditoriumModel.seats.forEach((List<MovieSeat> seatRows) {
      seatRows.forEach((MovieSeat seat) { seat.isSelected = false; });
    });
    notifyListeners();
  }

  void initializeAuditorium() {
    _auditoriumModel = MovieAuditoriumModel();
  }

  void selectSeat(MovieSeat seat) {
    if (!_selectedSeats.contains(seat)) {
      seat.isSelected = true;
      _selectedSeats.add(seat);
      notifyListeners();
    }
  }
}