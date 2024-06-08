import 'package:bilheteria_bloc/components/home/genre_filter.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Text('Filmes',
                    style: Theme.of(context).textTheme.displayLarge),
              ),
              const GenreFilter(),
              SliverGrid.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisExtent: 240),
                  itemBuilder: (context, index) {})
            ],
          ),
        ),
      ),
    );
  }
}
