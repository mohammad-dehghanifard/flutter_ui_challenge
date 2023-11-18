class MovieModel{

  MovieModel(
      {required this.movieName,
      required this.score,
      required this.imageUrl,
      required this.publishYear,
      required this.content,
      required this.watchTime,
      required this.liked});

  final String movieName;
  final String watchTime;
  final double score;
  final String imageUrl;
  final int publishYear;
  final String content;
  final bool liked;


}