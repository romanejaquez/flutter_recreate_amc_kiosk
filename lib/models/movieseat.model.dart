class MovieSeat {
  String seatLabel;
  bool isSelected;
  bool isHandicapped;
  bool isAvailable;

  MovieSeat({
    this.seatLabel,
    this.isSelected,
    this.isHandicapped,
    this.isAvailable = true
  });
}