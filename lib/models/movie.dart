import 'package:bilheteria_bloc/components/classification.dart';

class Movie {
  String name;
  Classification classification;
  String duration;
  String sinopse;
  String genre;
  String? imageUrl;
  List<String>? sessions;

  Movie(
      {required this.name,
      required this.classification,
      required this.duration,
      required this.sinopse,
      required this.genre,
      required this.imageUrl,
      required this.sessions});

  Movie.froJson(Map<String, dynamic>json)
  : name =json['name'].toString(),
  classification = Classification.values.firstWhere(
    (element)=> element.classification == json['classification'],
  ),
  duration = json['duration'].toString(),
  sinopse = json['sinopse'].toString(),
  genre = json['genre'].toString(),
  imageUrl = json['imageUrl'].toString() {
    if (json['sessions'] != null) {
      final v = json['imagemUrl'];
      final arr0 =<String>[];
      v.forEach((v){
        arr0.add(v.toString());
      });
      sessions = arr0;
    }
  }
}
