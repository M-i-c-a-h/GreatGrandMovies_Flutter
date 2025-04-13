import 'package:flutter/material.dart';
import 'package:great_grand_movies/helpers.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  final List<String> genres = [
    "Romance",
    "Drama",
    "Comedy",
    "Action",
    "Sci-Fi"
  ];
  final Map<String, List<String>> moviesByGenre = {
    "Romance": ["Titanic", "The Idea of You", "The Sun Is Also a Star"],
    "Drama": ["Waves", "Shawshank", "12 Angry Men"],
    "Comedy": ["The Hangover", "21 Jump Street", "Superbad"],
    "Action": ["John Wick", "The Terminator", "Avengers"],
    "Sci-Fi": ["Interstellar", "Inception", "Dune"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          // Sliver AppBar
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            backgroundColor: Colors.brown,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                final isCollapsed = constraints.biggest.height <=
                    kToolbarHeight + MediaQuery.of(context).padding.top;
                return FlexibleSpaceBar(
                  title: Text(
                    isCollapsed ? 'Great Grand Movies' : 'Welcome to GGM',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                    ),
                  ),
                  background: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    ),
                    child: const Image(
                      image: AssetImage('assets/mv.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),

          // Genre sections with pinned headers
          for (String genre in genres) ...[
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: GenreHeaderDelegate(genre),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: moviesByGenre[genre]?.length ?? 0,
                  itemBuilder: (context, idx) {
                    final movie = moviesByGenre[genre]![idx];
                    return buildMovieCatalog(context, genre, movie);
                  },
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
