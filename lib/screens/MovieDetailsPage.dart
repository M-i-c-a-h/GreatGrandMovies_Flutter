import 'package:flutter/material.dart';
import 'package:great_grand_movies/data.dart';

class MovieDetailsPage extends StatelessWidget {
  final FullMovieInfo fullMovieInfo;
  final String imagePath;

  const MovieDetailsPage(
      {super.key, required this.fullMovieInfo, required this.imagePath});

  final String defaultImage = "assets/mv.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          fullMovieInfo.title,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              // Optional rounded corners
              child: Container(
                width: double.infinity,
                // Ensures it stretches to parent width
                constraints: const BoxConstraints(
                  maxHeight: 500, // Adjust max height to prevent overflow
                  maxWidth: 500,
                ),
                child: Hero(
                  tag: fullMovieInfo.title,
                  child: Image.asset(imagePath, fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      defaultImage,
                      fit: BoxFit.cover,
                    );
                  }),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                infoRow("Director: ", fullMovieInfo.director),
                const SizedBox(height: 8),
                infoRow("Stars: ", fullMovieInfo.cast.join(", ")),
                const SizedBox(height: 8),
                infoRow("Duration: ", fullMovieInfo.duration),
                const SizedBox(height: 8),
                infoRow("Ratings: ", fullMovieInfo.ratings.join(" | ")),
              ],
            ),
          ),
        ],
      ),
    );
  }

// Helper widget to format each info row
  Widget infoRow(String title, String value) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
