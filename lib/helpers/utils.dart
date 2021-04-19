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
        description: 'Nowhere left to go, Will Hawkins finds himself at camp for the first time. His instinct is to run, but he finds a friend, a father figure and even a girl who awakens his heart. Most of all, he finally finds a home.',
        castInfo: "Kevin Quinn, Bailee Madison, Jahbril Cook",
        ratedInfo: "TV-PG",
        duration: "01:34:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/asunder-one-flesh-divided-12101087.jpeg',
        title: 'Asunder: One Flesh Divided',
        description: "After five years of marriage Ruth and Brandon seek to spice up their marriage, just not with each other. Brandon through addiction, and Ruth with a coworker. Will they be able to come back or will their marriage asunder?",
        castInfo: " Alana Barrett-Adkins, Justin Crowley, Jazmine Dinkins ",
        ratedInfo: "Not Rated",
        duration: "01:40:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/daisy-quokka-world-s-scariest-animal-12101127.jpeg',
        title: "Daisy Quokka: World\'s Scariest Animal",
        description: "An unbearably adorable, eternally optimistic Quokka named Daisy has an impossible dream - to win the 'World's Scariest Games'",
        castInfo: "Angourie Rice, Sam Neill, Sharnee Tones",
        ratedInfo: "PG-13",
        duration: "01:28:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/deadly-illusions-12101096.jpeg',
        title: "Deadly Illusions",
        description: "After a bestselling novelist suffering from writer's block hires a new nanny for her children, the line between fiction and reality starts to blur.",
        castInfo: "Greer Grammer, Dermot Mulroney, Kristin Davis",
        ratedInfo: "R",
        duration: "01:54:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/finding-love-in-mountain-view-12101114.jpeg',
        title: "Finding Love In Mountain View",
        description: "After learning she's been entrusted to take care of her deceased cousin's children, an architect is torn between focusing on her career and honoring her cousin's wish.",
        castInfo: "Danielle C. Ryan, Myko Olivier, John-Paul Lavoisier",
        ratedInfo: "PG-13",
        duration: "01:29:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/genesis-code-12101133.jpeg',
        title: "Genesis Code",
        description: "Framed for the murder of his wife, David Harris 'Bryce McLaughlin' senses Abby 'Elysia Rotaru' guiding him to evidence to prove his innocence before time runs out.",
        castInfo: "Bryce McLaughlin, Elysia Rotaru, William 'Big Sleeps' Stewart",
        ratedInfo: "TV-14",
        duration: "01:25:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/godzilla-vs-kong-12101145.jpeg',
        title: "Godzilla vs. Kong",
        description: "The epic next chapter in the cinematic Monsterverse pits two of the greatest icons in motion picture history against one another - the fearsome Godzilla and the mighty Kong - with humanity caught in the balance.",
        castInfo: "Alexander Skarsgård, Millie Bobby Brown, Rebecca Hall",
        ratedInfo: "PG-13",
        duration: "01:53:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/hawk-and-rev-vampire-slayers-12101086.jpeg',
        title: "Hawk and Rev - Vampire Slayers",
        description: "Philip 'HAWK' Hawkins doesn't just dream about killing vampires - He eats, sleeps, drinks and freakin' breaths it. After getting kicked out the Army for staking a fellow soldier with a blunt two by four, Hawk almost dies of boredom working as a night security guard in his hometown of Santa Muerte, California - USA.",
        castInfo: "Ryan Barton-Grimley, Ari Schneider, Jana Savage",
        ratedInfo: "PG-13",
        duration: "01:25:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/homesick-12101123.jpeg',
        title: "Homesick",
        description: "Two half-siblings who grew up apart, meet for the first time as adults and fall in love.",
        castInfo: "Ine Marie Wilmann, Simon J. Berger, Anneke von der Lippe",
        ratedInfo: "R",
        duration: "01:46:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/it-was-always-you-102247.jpeg',
        title: "It was always you",
        description: "Elizabeth's engagement plans are thrown into disarray when her fiance's brother returns home. His unexpected influence prompts Elizabeth to question her life decisions.",
        castInfo: "Erin Krakow, Tyler Hynes, Giles Panton",
        ratedInfo: "TV-G",
        duration: "01:26:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/nemesis-12101150.jpeg',
        title: "Nemesis",
        description: "An underworld kingpin's past catches up with him when he returns to London, igniting an explosive chain of events which ends in revenge and murder.",
        castInfo: "Julian Glover, Jeanine Nerissa Sothcott, Nick Moran",
        ratedInfo: "TV-G",
        duration: "01:28:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/nest-of-vampires-12101144.jpeg',
        title: "Nest of Vampires",
        description: "Nest of Vampires follows an MI5 agent who travels from London to rural England in search of the people who murdered his wife and kidnapped his only daughter.",
        castInfo: "Shawn C. Phillips, Jet Jandreau, Daria Krauzo",
        ratedInfo: "TV-G",
        duration: "01:27:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/one-and-the-same-12101125.jpeg',
        title: "One and The Same",
        description: "When a young woman, Lola, is invited to a secret facility, she discovers an experiment beyond space and time. After uncovering her own past life as a teenage boy named Robbie, she embarks on a malevolent path for justice against the ex-con who killed him.",
        castInfo: "Acoryé White, Makena Taylor, Glenn Plummer",
        ratedInfo: "Not Rated",
        duration: "01:50:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/pharaoh-s-war-12101116.jpeg',
        title: "Pharaoh's War",
        description: "An ex-military man with a mysterious past leads a group of Egyptian refugees through the desert and must protect them from a group of evil mercenaries.",
        castInfo: "Mike Tyson, Hafþór Júlíus Björnsson, Amr Saad",
        ratedInfo: "Not Rated",
        duration: "01:50:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/phobias-12101094.jpeg',
        title: "Phobias",
        description: "Five dangerous patients, suffering from extreme phobias at a government testing facility, are put to the ultimate test under the supervision of a crazed doctor and his quest to weaponize fear.",
        castInfo: "Alexis Knapp, Charlotte McKinney, Lauren Miller Rogen",
        ratedInfo: "R",
        duration: "01:25:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/playing-cupid-12101084.jpeg',
        title: "Playing Cupid",
        description: "In the halls of Austen Middle School, a newly single middle-school teacher is covertly set up with a divorced dad after his daughter - one of her students - begins a matchmaking business for a school project she assigned her class.",
        castInfo: "Laura Vandervoort, Nicholas Gonzalez, Mia Quaranta de la Rosa",
        ratedInfo: "TV-G",
        duration: "01:24:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/sacrilege-12101089.jpeg',
        title: "Sacrilege",
        description: "Four lifelong friends head to a remote lodge for a weekend of fun. What begins as an idyllic retreat quickly descends into a fight for their lives when a local Pagan cult offer them up to their Goddess as a sacrifice for the Solstice.",
        castInfo: "Tamaryn Payne, Emily Wyatt, Sian Abrahams",
        ratedInfo: "Not Rated",
        duration: "01:26:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/shoplifters-of-the-world-12101136.jpeg',
        title: "Shoplifters of the world",
        description: "1987. Denver, Co. One crazy night in the life of four friends reeling from the sudden demise of iconic British band The Smiths, while the local airwaves are hijacked at gunpoint by an impassioned Smiths fan.",
        castInfo: "Helena Howard, Ellar Coltrane, Elena Kampouris",
        ratedInfo: "Not Rated",
        duration: "01:30:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/someday-isles-12101085.jpeg',
        title: "Someday Isles",
        description: "'Someday Isles' is a Feature Film detailing the chaotic journey of PayAttenion coming to terms with his life's purpose by embracing his destiny through self-actualization.",
        castInfo: "Shawn St. Cyr, Danny Kwok-Kwan Chan, Michelle Ip",
        ratedInfo: "PG-13",
        duration: "01:30:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/spiked-12101137.jpeg',
        title: "Spiked",
        description: "When the murder of a migrant worker shakes a southwest border town to its core, the feud between a newspaper owner and the chief of police leads to the blurring of the truth and a dirty fight for justice.",
        castInfo: "Deirdre Lovejoy, Aidan Quinn, Wendy Makkena",
        ratedInfo: "TV-G",
        duration: "01:33:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-arbors-12101134.jpeg',
        title: "The Arbors",
        description: "Ethan's life takes an unsettling turn after finding a strange small creature and forming a mysterious connection.",
        castInfo: "Drew Matthews, Ryan Davenport, Sarah Cochrane",
        ratedInfo: "Not Rated",
        duration: "02:17:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-book-of-job-12101091.jpeg',
        title: "The Book of Job",
        description: "The Book of Job is about a high school student who has trouble separating reality from fiction. Young Job falls 'madly in love' with a new girl who catches his eye one Sunday mass",
        castInfo: "Benjamin Singel, Robb Hudspeth, Eileen Alger",
        ratedInfo: "PG-13",
        duration: "01:30:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-heiress-12101088.jpeg',
        title: "The Heiress",
        description: "A young naive woman falls for a handsome young man who her emotionally abusive father suspects is a fortune hunter.",
        castInfo: "Olivia de Havilland, Montgomery Clift, Ralph Richardson",
        ratedInfo: "Not Rated",
        duration: "01:55:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-incredible-25th-year-of-mitzi-bearclaw-12101129.jpeg',
        title: "The Incredible 25th year of Mitzi Bearclaw",
        description: "Mitzi Bearclaw is an indigenous woman who reluctantly returns to her isolated reserve to help her father care for her bitter mother.",
        castInfo: "MorningStar Angeline, Andrew Martin, Ajuawak Kapashesit",
        ratedInfo: "PG-13",
        duration: "01:36:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-never-list-12101092.jpeg',
        title: "The Never List",
        description: "After the sudden death of her best friend, a straight-A, obedient teen sets out to fulfill their secret list of outrageous acts they said they'd never do.",
        castInfo: "Fivel Stewart, Keiko Agena, Andrew Kai",
        ratedInfo: "R",
        duration: "01:42:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-parish-12101083.jpeg',
        title: "The Parish",
        description: "Haunted by the death of her husband, Liz uproots her daughter and moves them to a small town, where the real nightmares begin.",
        castInfo: "Angela DiMarco, Sanae Loutsis, Bill Oberst Jr.",
        ratedInfo: "R",
        duration: "01:21:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-tangle-12101140.jpeg',
        title: "The Tangle",
        description: "Set in a near future in which the Tangle connects everyone to everything via hard drives in the brain, a group of government agents try to protect humanity from within hidden technology saferooms, rooms the Tangle cannot reach.",
        castInfo: "Joshua Bitton, Christopher Soren Kelly, Jessica Graham",
        ratedInfo: "Not Rated",
        duration: "01:39:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-toll-12101121.jpeg',
        title: "The Toll",
        description: "A socially awkward driver and a weary passenger try to make it to their destination while being haunted by a supernatural threat.",
        castInfo: "Jordan Hayes, Max Topplin, James McGowan",
        ratedInfo: "R",
        duration: "01:20:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/the-widow-12101132.jpeg',
        title: "The Widow",
        description: "In a densely forested area north of St. Petersburg people have been going missing for three decades.The few corpses ever found were naked.",
        castInfo: "Natalya Dubovaya, Ivan Kapitonov",
        ratedInfo: "R",
        duration: "01:26:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/v-c-andrews-all-that-glitters-12101147.jpeg',
        title: "V. C. Andrews' All that Glitters",
        description: "All That Glitters picks up as Ruby is driven from the Dumas mansion and returns to her beloved childhood home in the bayou where she's intent on creating a new life for her baby daughter, Pearl.",
        castInfo: "Raechelle Banno, Karina Banno, Kristian Alfonso",
        ratedInfo: "TV-14",
        duration: "01:30:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/violation-12101135.jpeg',
        title: "Violation",
        description: "A troubled woman on the edge of divorce returns home to her younger sister after years apart. But when her sister and brother-in-law betray her trust, she embarks on a vicious crusade of revenge.",
        castInfo: "Madeleine Sims-Fewer, Anna Maguire, Jesse LaVercombe",
        ratedInfo: "Not Rated",
        duration: "01:47:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/wildcat-12101119.jpeg',
        title: "Wildcat",
        description: "An ambitious reporter stationed in the Middle East who is taken captive after her convoy is ambushed. She is confronted by the trauma of her past and must find a way to bring down the militants who incarcerated her.",
        castInfo: "Georgina Campbell, Luke Benward, Ibrahim Renno",
        ratedInfo: "R",
        duration: "01:33:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/women-12101146.jpeg',
        title: "Women",
        description: "A small town detective investigates into a Sociology professor when a mutilated body is found and women have gone missing from his class.",
        castInfo: "Anna Marie Dobbins, Anna Maiche, Kylie Delre",
        ratedInfo: "Not Rated",
        duration: "01:32:00"
      ),
      MovieModel(
        imgPath: './assets/imgs/movies/zack-snyder-s-justice-league-12101097.jpeg',
        title: "Zack Snyder's Justice League",
        description: "Determined to ensure Superman's ultimate sacrifice was not in vain, Bruce Wayne aligns forces with Diana Prince with plans to recruit a team of metahumans to protect the world from an approaching threat of catastrophic proportions.",
        castInfo: "Henry Cavill, Ben Affleck, Gal Gadot",
        ratedInfo: "R",
        duration: "04:02:00"
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