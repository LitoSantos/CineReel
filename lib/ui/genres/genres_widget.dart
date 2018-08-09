import 'package:cine_reel/models/tmdb_genres.dart';
import 'package:flutter/widgets.dart';

class GenresWidget extends StatelessWidget {
  final List<TMDBGenre> genres;
  final bool visible;

  GenresWidget({this.genres, this.visible});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: visible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 300),
        child: GridView.count(
						crossAxisCount: 3,
						children: List.generate(genres != null ? genres.length : 0, (index) {
							return Center(child: Text("${genres[index].name}"));
						})));
  }
}