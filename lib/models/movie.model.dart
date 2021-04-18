import 'package:amc_flutter_app/models/movietime.model.dart';

class MovieModel {
  String imgPath;
  String title;
  String description;
  String castInfo;
  String duration;
  String ratedInfo;
  List<MovieTimeModel> availableTimes;

  MovieModel({
    this.imgPath,
    this.title,
    this.description,
    this.castInfo,
    this.duration,
    this.ratedInfo,
    this.availableTimes
  });
}