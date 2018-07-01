import 'package:flutter_bloc_movies/models/Movie.dart';

class MovieListState {
	List<Movie> movies;
	bool isLoading;
	int page = 0;

	static final Map<String, MovieListState> _cache = <String, MovieListState>{};

	MovieListState.internal({this.movies, this.page, this.isLoading});

	factory MovieListState(String name) {
		if (_cache.containsKey(name)) {
			return _cache[name];
		} else {
			final movieListState = MovieListState.internal(
					movies: [],
					page: 0,
					isLoading: false);
			_cache[name] = movieListState;
			return movieListState;
		}
	}

	update({List<Movie> newMovies, int newPage, bool loading}) {
		return this
			..movies.addAll(newMovies)
			..page = newPage ?? this.page
			..isLoading = loading ?? this.isLoading;
	}
}