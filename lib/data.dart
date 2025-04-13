import 'package:flutter/material.dart';
import 'package:great_grand_movies/screens/MoviePage.dart';

class FullMovieInfo {
  final String title;
  final String director;
  final List<String> cast;
  final String duration;
  final List<String> ratings;

  FullMovieInfo({
    required this.title,
    required this.director,
    required this.cast,
    required this.duration,
    required this.ratings,
  });
}

class MovieDetails {
  final String name;
  final String movieInfo;
  final String imdb;
  final String wiki;
  final String imagePath;
  final Widget route;
  final FullMovieInfo fullMovieInfo;

  MovieDetails({
    required this.name,
    required this.movieInfo,
    required this.imdb,
    required this.wiki,
    required this.imagePath,
    required this.route,
    required this.fullMovieInfo,
  });
}

final Map<String, List<MovieDetails>> movieDatabase = {
  "Romance": [
    MovieDetails(
      name: "Titanic",
      movieInfo: "James Cameron 1997",
      imdb: "https://www.imdb.com/title/tt0120338/",
      wiki: "https://en.wikipedia.org/wiki/Titanic_(1997_film)",
      imagePath: "assets/titanic.png",
      route: MoviePage(
          title: "Titanic",
          imdb: "https://www.imdb.com/title/tt0120338/",
          imagePath: "assets/titanic.png"),
      fullMovieInfo: FullMovieInfo(
        title: "Titanic",
        director: "James Cameron",
        cast: ["Leonardo DiCaprio", "Kate Winslet"],
        duration: "3h 15m",
        ratings: ["Rotten Tomatoes: 89%", "IMDb: 7.9/10"],
      ),
    ),
    MovieDetails(
      name: "The Idea of You",
      movieInfo: "Michael Showalter 2024",
      imdb: "https://www.imdb.com/title/tt9466114/",
      wiki: "https://en.wikipedia.org/wiki/The_Idea_of_You_(film)",
      imagePath: "assets/idea_of_you.jpeg",
      route: MoviePage(
          title: "The Idea of You",
          imdb: "https://www.imdb.com/title/tt9466114/",
          imagePath: "assets/idea_of_you.jpeg"),
      fullMovieInfo: FullMovieInfo(
        title: "The Idea of You",
        director: "Michael Showalter",
        cast: ["Anne Hathaway", "Nicholas Galitzine"],
        duration: "1h 55m",
        ratings: ["Rotten Tomatoes: 74%", "IMDb: 6.2/10"],
      ),
    ),
    MovieDetails(
      name: "The Sun Is Also a Star",
      movieInfo: "Ry Russo-Young 2019",
      imdb: "https://www.imdb.com/title/tt6423362/",
      wiki: "https://en.wikipedia.org/wiki/The_Sun_Is_Also_a_Star",
      imagePath: "assets/sun_is_also_a_star.jpg",
      route: MoviePage(
          title: "The Sun Is Also a Star",
          imdb: "https://www.imdb.com/title/tt6423362/",
          imagePath: "assets/sun_is_also_a_star.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "The Sun Is Also a Star",
        director: "Ry Russo-Young",
        cast: ["Yara Shahidi", "Charles Melton"],
        duration: "1h 40m",
        ratings: ["Rotten Tomatoes: 52%", "IMDb: 5.9/10"],
      ),
    ),
  ],
  "Drama": [
    MovieDetails(
      name: "Waves",
      movieInfo: "Trey Edward Shults 2019",
      imdb: "https://www.imdb.com/title/tt8652728/",
      wiki: "https://en.wikipedia.org/wiki/Waves_(2019_film)",
      imagePath: "assets/waves.jpg",
      route: MoviePage(
          title: "Waves",
          imdb: "https://www.imdb.com/title/tt8652728/",
          imagePath: "assets/waves.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "Waves",
        director: "Trey Edward Shults",
        cast: ["Kelvin Harrison Jr.", "Taylor Russell"],
        duration: "2h 15m",
        ratings: ["Rotten Tomatoes: 85%", "IMDb: 7.5/10"],
      ),
    ),
    MovieDetails(
      name: "Shawshank",
      movieInfo: "Frank Darabont 1994",
      imdb: "https://www.imdb.com/title/tt0111161/",
      wiki: "https://en.wikipedia.org/wiki/The_Shawshank_Redemption",
      imagePath: "assets/shawshank.jpg",
      route: MoviePage(
          title: "Shawshank",
          imdb: "https://www.imdb.com/title/tt0111161/",
          imagePath: "assets/shawshank.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "The Shawshank Redemption",
        director: "Frank Darabont",
        cast: ["Tim Robbins", "Morgan Freeman"],
        duration: "2h 22m",
        ratings: ["Rotten Tomatoes: 91%", "IMDb: 9.3/10"],
      ),
    ),
    MovieDetails(
      name: "12 Angry Men",
      movieInfo: "Sidney Lumet 1957",
      imdb: "https://www.imdb.com/title/tt0050083/",
      wiki: "https://en.wikipedia.org/wiki/12_Angry_Men_(1957_film)",
      imagePath: "assets/12_angry_men.jpeg",
      route: MoviePage(
          title: "12 Angry Men",
          imdb: "https://www.imdb.com/title/tt0050083/",
          imagePath: "assets/12_angry_men.jpeg"),
      fullMovieInfo: FullMovieInfo(
        title: "12 Angry Men",
        director: "Sidney Lumet",
        cast: ["Henry Fonda", "Lee J. Cobb"],
        duration: "1h 36m",
        ratings: ["Rotten Tomatoes: 100%", "IMDb: 9.0/10"],
      ),
    ),
  ],
  "Comedy": [
    MovieDetails(
      name: "The Hangover",
      movieInfo: "Todd Phillips 2009",
      imdb: "https://www.imdb.com/title/tt1119646/",
      wiki: "https://en.wikipedia.org/wiki/The_Hangover",
      imagePath: "assets/hangover.jpg",
      route: MoviePage(
          title: "The Hangover",
          imdb: "https://www.imdb.com/title/tt1119646/",
          imagePath: "assets/hangover.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "The Hangover",
        director: "Todd Phillips",
        cast: ["Bradley Cooper", "Ed Helms", "Zach Galifianakis"],
        duration: "1h 40m",
        ratings: ["Rotten Tomatoes: 78%", "IMDb: 7.7/10"],
      ),
    ),
    MovieDetails(
      name: "21 Jump Street",
      movieInfo: "Phil Lord & Christopher Miller 2012",
      imdb: "https://www.imdb.com/title/tt1232829/",
      wiki: "https://en.wikipedia.org/wiki/21_Jump_Street_(film)",
      imagePath: "assets/21_jump_street.jpg",
      route: MoviePage(
          title: "21 Jump Street",
          imdb: "https://www.imdb.com/title/tt1232829/",
          imagePath: "assets/21_jump_street.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "21 Jump Street",
        director: "Phil Lord & Christopher Miller",
        cast: ["Jonah Hill", "Channing Tatum"],
        duration: "1h 49m",
        ratings: ["Rotten Tomatoes: 85%", "IMDb: 7.2/10"],
      ),
    ),
    MovieDetails(
      name: "Superbad",
      movieInfo: "Greg Mottola 2007",
      imdb: "https://www.imdb.com/title/tt0829482/",
      wiki: "https://en.wikipedia.org/wiki/Superbad_(film)",
      imagePath: "assets/superbad.jpg",
      route: MoviePage(
          title: "Superbad",
          imdb: "https://www.imdb.com/title/tt0829482/",
          imagePath: "assets/superbad.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "Superbad",
        director: "Greg Mottola",
        cast: ["Jonah Hill", "Michael Cera", "Emma Stone"],
        duration: "1h 53m",
        ratings: ["Rotten Tomatoes: 88%", "IMDb: 7.6/10"],
      ),
    ),
  ],
  "Action": [
    MovieDetails(
      name: "John Wick",
      movieInfo: "Chad Stahelski 2014",
      imdb: "https://www.imdb.com/title/tt2911666/",
      wiki: "https://en.wikipedia.org/wiki/John_Wick_(film)",
      imagePath: "assets/john_wick.jpg",
      route: MoviePage(
          title: "John Wick",
          imdb: "https://www.imdb.com/title/tt2911666/",
          imagePath: "assets/john_wick.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "John Wick",
        director: "Chad Stahelski",
        cast: ["Keanu Reeves", "Michael Nyqvist"],
        duration: "1h 41m",
        ratings: ["Rotten Tomatoes: 86%", "IMDb: 7.4/10"],
      ),
    ),
    MovieDetails(
      name: "The Terminator",
      movieInfo: "James Cameron 1984",
      imdb: "https://www.imdb.com/title/tt0088247/",
      wiki: "https://en.wikipedia.org/wiki/The_Terminator",
      imagePath: "assets/terminator.jpg",
      route: MoviePage(
          title: "The Terminator",
          imdb: "https://www.imdb.com/title/tt0088247/",
          imagePath: "assets/terminator.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "The Terminator",
        director: "James Cameron",
        cast: ["Arnold Schwarzenegger", "Linda Hamilton"],
        duration: "1h 47m",
        ratings: ["Rotten Tomatoes: 89%", "IMDb: 8.0/10"],
      ),
    ),
    MovieDetails(
      name: "Avengers",
      movieInfo: "Joss Whedon 2012",
      imdb: "https://www.imdb.com/title/tt0848228/",
      wiki: "https://en.wikipedia.org/wiki/The_Avengers_(2012_film)",
      imagePath: "assets/avengers.jpg",
      route: MoviePage(
          title: "Avengers",
          imdb: "https://www.imdb.com/title/tt0848228/",
          imagePath: "assets/avengers.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "Avengers",
        director: "Joss Whedon",
        cast: ["Robert Downey Jr.", "Chris Evans", "Scarlett Johansson"],
        duration: "2h 23m",
        ratings: ["Rotten Tomatoes: 91%", "IMDb: 8.0/10"],
      ),
    ),
  ],
  "Sci-Fi": [
    MovieDetails(
      name: "Interstellar",
      movieInfo: "Christopher Nolan 2014",
      imdb: "https://www.imdb.com/title/tt0816692/",
      wiki: "https://en.wikipedia.org/wiki/Interstellar_(film)",
      imagePath: "assets/interstellar.jpeg",
      route: MoviePage(
          title: "Interstellar",
          imdb: "https://www.imdb.com/title/tt0816692/",
          imagePath: "assets/interstellar.jpeg"),
      fullMovieInfo: FullMovieInfo(
        title: "Interstellar",
        director: "Christopher Nolan",
        cast: ["Matthew McConaughey", "Anne Hathaway", "Jessica Chastain"],
        duration: "2h 49m",
        ratings: ["Rotten Tomatoes: 73%", "IMDb: 8.6/10"],
      ),
    ),
    MovieDetails(
      name: "Inception",
      movieInfo: "Christopher Nolan 2010",
      imdb: "https://www.imdb.com/title/tt1375666/",
      wiki: "https://en.wikipedia.org/wiki/Inception",
      imagePath: "assets/inception.jpg",
      route: MoviePage(
          title: "Inception",
          imdb: "https://www.imdb.com/title/tt1375666/",
          imagePath: "assets/inception.jpg"),
      fullMovieInfo: FullMovieInfo(
        title: "Inception",
        director: "Christopher Nolan",
        cast: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Ellen Page"],
        duration: "2h 28m",
        ratings: ["Rotten Tomatoes: 87%", "IMDb: 8.8/10"],
      ),
    ),
    MovieDetails(
      name: "Dune",
      movieInfo: "Denis Villeneuve 2021",
      imdb: "https://www.imdb.com/title/tt1160419/",
      wiki: "https://en.wikipedia.org/wiki/Dune_(2021_film)",
      imagePath: "assets/dune.jpeg",
      route: MoviePage(
          title: "Dune",
          imdb: "https://www.imdb.com/title/tt1160419/",
          imagePath: "assets/dune.jpeg"),
      fullMovieInfo: FullMovieInfo(
        title: "Dune",
        director: "Denis Villeneuve",
        cast: ["Timothée Chalamet", "Zendaya", "Oscar Isaac"],
        duration: "2h 35m",
        ratings: ["Rotten Tomatoes: 83%", "IMDb: 8.1/10"],
      ),
    ),
  ],
};
