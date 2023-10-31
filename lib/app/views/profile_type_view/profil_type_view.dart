import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:influencer_app/core/constants/colors_constants/light_theme_constants/light_theme_color_constants.dart';
import 'package:influencer_app/gen/assets.gen.dart';
@RoutePage()
class ProfileTypeView extends StatelessWidget {
  const ProfileTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppLightColorConstants.bgLight,
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Title"),),
        body: Column(
          children: [
            Column(
              children: [
              Container(child: Image.asset (Assets.images.png.imagePngProfileThemeOne.path),
              
              ),
              Image.asset (Assets.images.png.imagePngProfileThemeOne.path),
              ],
              
            ),
          ],
        ),
    );
  }
}
