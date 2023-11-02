import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/app/views/post_view/post_builder.dart';
import 'package:influencer_app/gen/assets.gen.dart';

@RoutePage()
class GridViewHome extends StatelessWidget {
  const GridViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Assets.images.png.imagePngLogoHorizantal.path,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 75,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const GridViewBuilder(),
      ),
    );
  }
}
