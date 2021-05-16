class MovieSeat {
  String seatLabel;
  bool isSelected;
  bool isAssisted;
  bool isAvailable;

  MovieSeat({
    this.seatLabel,
    this.isSelected,
    this.isAssisted,
    this.isAvailable = true
  });
}