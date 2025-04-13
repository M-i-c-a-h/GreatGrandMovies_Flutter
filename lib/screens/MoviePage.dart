import 'package:flutter/material.dart';
import 'package:great_grand_movies/helpers.dart';

class MoviePage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String imdb;

  const MoviePage(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.imdb});

  final String defaultImage = "assets/mv.jpg";

  Uri get _url => Uri.parse(imdb);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800)),
        backgroundColor: Colors.brown,
      ),
      body: GestureDetector(
        onTap: () {
          // Example: Go back or show controls
          launchURL(_url);
        },
        child: SizedBox.expand(
            child: Hero(
          tag: title,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                defaultImage,
                fit: BoxFit.cover,
              );
            },
          ),
        )),
      ),
    );
  }
}
