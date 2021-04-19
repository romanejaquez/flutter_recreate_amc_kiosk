import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:amc_flutter_app/models/movietime.model.dart';

class MovieSelectionService {

  MovieModel _selectedMovie;

  MovieModel  get selectedMovie => _selectedMovie;

  set selectedMovie(MovieModel value) {
    _selectedMovie = value;
  }

  MovieTimeModel getSelectMovieTime() {
   MovieTimeModel selectedTime = _selectedMovie.availableTimes.firstWhere((MovieTimeModel movieTime) => movieTime.isSelected);
   return selectedTime;
  }

  void selectMovieTime(MovieTimeModel time) {
    _selectedMovie.availableTimes.forEach((MovieTimeModel movieTime) => {
      movieTime.isSelected = movieTime == time
    });
  }
}