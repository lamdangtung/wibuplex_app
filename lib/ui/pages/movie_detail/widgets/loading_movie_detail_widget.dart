import 'package:flutter/material.dart';
import 'package:wibuplex_app/ui/widgets/shimmer/app_shimmer.dart';

class LoadingMovieDetailWidget extends StatelessWidget {
  const LoadingMovieDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppShimmer(
          width: double.infinity,
          height: 500,
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: AppShimmer(
            height: 24,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: AppShimmer(
              height: 24,
            ))
      ],
    );
  }
}
