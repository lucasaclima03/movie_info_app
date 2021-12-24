import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_app/components/genre_card.dart';
import 'package:movie_info_app/constants.dart';
import 'package:movie_info_app/models/movie.dart';

import 'backdrop_rating.dart';
import 'genres.dart';
import 'title_duration.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        BackdropAndRating(size: size, movie: movie),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        TitleDuration(movie: movie),
        Genres(movie: movie),
      ],
    );
  }
}

