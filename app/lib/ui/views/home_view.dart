import 'package:colaborativa_app/ui/views/mentor_view.dart';
import 'package:colaborativa_app/ui/widgets/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../navigation/routes.dart';
import '../theme/pictures.dart';
import 'activities/activities_view.dart';
import 'score_view.dart';
import 'share_feeling_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigate = Navigator.of(context);

    return Scaffold(
      appBar: AppBar(
        title: UserWidget(
          builder: (contex, user) => Text(
            'Olá, ${user!.name}',
            style: const TextStyle(fontSize: 28.0),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => navigate.pushNamed(Routes.chat),
            child: SvgPicture.asset(
              SvgPictures.messenger,
              width: 32.0,
              height: 32.0,
            ),
          ),
          TextButton(
            onPressed: () => navigate.pushNamed(Routes.menu),
            child: SvgPicture.asset(
              SvgPictures.menu,
              width: 32.0,
              height: 32.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ShareFeelingView(),
            ),
            ActivitiesView(),
            MentorView(),
            ScoreView(),
            SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
