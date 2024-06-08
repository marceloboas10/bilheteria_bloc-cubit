import 'package:bilheteria_bloc/models/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 200),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Card()));
            },),
          ),
        ),
      ],
    );
  }
}
