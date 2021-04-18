import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:amc_flutter_app/models/movietime.model.dart';

class MovieSelectionService {

  MovieModel _selectedMovie;

  MovieModel  get selectedMovie => _selectedMovie;

  set selectedMovie(MovieModel value) {
    _selectedMovie = value;
  }

  void selectMovieTime(MovieTimeModel time) {

  }
}