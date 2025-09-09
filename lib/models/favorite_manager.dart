import 'movie.dart';

class FavoriteManager {
  static final Set<Movie> _favorites = {};

  static List<Movie> get favorites => _favorites.toList();

  static bool isFavorite(Movie movie) => _favorites.contains(movie);

  static void toggleFavorite(Movie movie) {
    if (isFavorite(movie)) {
      _favorites.remove(movie);
    } else {
      _favorites.add(movie);
    }
  }
}
