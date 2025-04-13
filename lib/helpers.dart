import 'package:flutter/material.dart';
import 'package:great_grand_movies/screens/MovieDetailsPage.dart';
import 'package:great_grand_movies/screens/samplePage.dart';
import 'package:great_grand_movies/data.dart';
import 'package:url_launcher/url_launcher.dart';

enum PopItem { itemOne, itemTwo, itemThree }

// Custom SliverPersistentHeaderDelegate for genre title
class GenreHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String genre;

  GenreHeaderDelegate(this.genre);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: const Border(
          top: BorderSide(
            color: Colors.brown,
            width: 1.0,
          ),
          bottom: BorderSide(
            color: Colors.brown,
            width: 1.0,
          ),
        ),
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        genre,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.brown,
        ),
      ),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant GenreHeaderDelegate oldDelegate) {
    return oldDelegate.genre != genre;
  }
}

// function to create movie catalog
Widget buildMovieCatalog(
    BuildContext context, String genre, String movieTitle) {
  final movie = movieDatabase[genre]?.firstWhere(
    (m) => m.name == movieTitle,
    orElse: () => MovieDetails(
      name: "",
      movieInfo: " ",
      imdb: "",
      wiki: "",
      imagePath: "assets/mv.jpg",
      route: SampleRoute(),
      fullMovieInfo: FullMovieInfo(
        title: "",
        director: "",
        cast: [],
        duration: "",
        ratings: [""],
      ),
    ),
  );

  if (movie == null) {
    return SizedBox(); // an error widget
  }

  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => movie.route),
      );
    },
    onLongPressStart: (details) async {
      final RenderBox overlay =
          Overlay.of(context).context.findRenderObject() as RenderBox;

      final selectedItem = await showMenu<PopItem>(
        context: context,
        position: RelativeRect.fromRect(
          details.globalPosition & const Size(40, 40), // touch position
          Offset.zero & overlay.size, // screen size
        ),
        items: const [
          PopupMenuItem<PopItem>(
            value: PopItem.itemOne,
            child: Text('View more info'),
          ),
          PopupMenuItem<PopItem>(
            value: PopItem.itemTwo,
            child: Text('Go to wiki page'),
          ),
          PopupMenuItem<PopItem>(
            value: PopItem.itemThree,
            child: Text('Go to IMDb page'),
          ),
        ],
      );

      if (selectedItem == PopItem.itemOne) {
        final detailsPage = MovieDetailsPage(
            fullMovieInfo: movie.fullMovieInfo, imagePath: movie.imagePath);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detailsPage),
        );
      } else if (selectedItem == PopItem.itemTwo) {
        launchUrl(Uri.parse(movie.wiki));
      } else if (selectedItem == PopItem.itemThree) {
        launchUrl(Uri.parse(movie.imdb));
      }
    },
    child: Container(
      width: 350,
      margin: const EdgeInsets.only(right: 12, left: 16, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.brown.shade200,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
                width: 100,
                height: 150,
                child: Hero(
                  tag: movieTitle,
                  child: Image.asset(
                    movie.imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // Fallback image
                      return Image.asset(
                        'assets/mv.jpg',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                )),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieTitle,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movie.movieInfo,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// function to lunch url
Future<void> launchURL(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
