import 'package:amc_flutter_app/helpers/ticket.type.dart';
import 'package:amc_flutter_app/models/movie.model.dart';
import 'package:amc_flutter_app/models/movietime.model.dart';

class Utils {

  static List<MovieModel> getMovies() {

    DateTime currentDate = DateTime.now();

    List<MovieTimeModel> availableDates = [];

    for(int i = 0; i < 5; i++) {

      String formattedHour = currentDate.hour % 12 == 0 ? '12' : (currentDate.hour % 12).toString();
      String formattedTime = formattedHour + ":00 " + (currentDate.hour < 12 ? "AM" : "PM");
      availableDates.add(MovieTimeModel(time: formattedTime));
      currentDate = currentDate.add(const Duration(hours: 1));
    }

    var movieList = [
      MovieModel(
        imgPath: './assets/imgs/movies/a-week-away-12101141.jpeg',
        title: 'A week away',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/asunder-one-flesh-divided-12101087.jpeg',
        title: 'Asunder - One Flesh Divided',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/daisy-quokka-world-s-scariest-animal-12101127.jpeg',
        title: "Daisy Quokka: World\'s Scariest Animal",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/deadly-illusions-12101096.jpeg',
        title: "Deadly Illusions",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/finding-love-in-mountain-view-12101114.jpeg',
        title: "Finding Love In Mountain View",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/genesis-code-12101133.jpeg',
        title: "Genesis Code",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/godzilla-vs-kong-12101145.jpeg',
        title: "Godzilla vs. Kong",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/hawk-and-rev-vampire-slayers-12101086.jpeg',
        title: "Hawk and Rev - Vampire Slayers",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/homesick-12101123.jpeg',
        title: "Homesick",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/it-was-always-you-102247.jpeg',
        title: "It was always you",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/nemesis-12101150.jpeg',
        title: "Nemesis",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/nest-of-vampires-12101144.jpeg',
        title: "Nest of Vampires",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/one-and-the-same-12101125.jpeg',
        title: "One and The Same",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/pharaoh-s-war-12101116.jpeg',
        title: "Pharaoh's War",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/phobias-12101094.jpeg',
        title: "Phobias",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/playing-cupid-12101084.jpeg',
        title: "Playing Cupid",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/sacrilege-12101089.jpeg',
        title: "Sacrilege",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/shoplifters-of-the-world-12101136.jpeg',
        title: "Shoplifters of the world",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/someday-isles-12101085.jpeg',
        title: "Someday Isles",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/spiked-12101137.jpeg',
        title: "Spiked",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-arbors-12101134.jpeg',
        title: "The Arbors",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-book-of-job-12101091.jpeg',
        title: "The Book of Job",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-heiress-12101088.jpeg',
        title: "The Heiress",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-incredible-25th-year-of-mitzi-bearclaw-12101129.jpeg',
        title: "The Incredible 25th year of Mitzi Bearclaw",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-never-list-12101092.jpeg',
        title: "The Never List",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-parish-12101083.jpeg',
        title: "The Parish",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-tangle-12101140.jpeg',
        title: "The Tangle",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-toll-12101121.jpeg',
        title: "The Toll",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-widow-12101132.jpeg',
        title: "The Widow",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/v-c-andrews-all-that-glitters-12101147.jpeg',
        title: "V C Andrews - All that Glitters",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/violation-12101135.jpeg',
        title: "Violation",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/wildcat-12101119.jpeg',
        title: "Wildcat",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/women-12101146.jpeg',
        title: "Women",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/zack-snyder-s-justice-league-12101097.jpeg',
        title: "Zack Snyder's Justice League",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        castInfo: "",
        ratedInfo: "PG-13",
        duration: "02:17:00"
      )
    ];

    movieList.forEach((MovieModel movieModel) {
      movieModel.availableTimes = availableDates;
      var parsedDuration = DateTime.parse('2021-01-01 ' + movieModel.duration);
      movieModel.duration = parsedDuration.hour.toString() + ' hr. ' + parsedDuration.minute.toString() + ' min.';
    });

    return movieList;
  }

  static String getStringFromTicketType(TicketType type) {

    switch(type) {
      case TicketType.Adult:
        return 'ADULT';
      case TicketType.Child:
        return 'CHILD 2-12 yrs';
      case TicketType.Senior:
        return 'SENIOR';
    }
  }
}