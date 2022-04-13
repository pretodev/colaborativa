import 'package:colaborativa_app/app/feeling/register_day_feeling.dart';
import 'package:colaborativa_app/domain/feeling/feeling_repository.dart';
import 'package:colaborativa_app/infra/firebase_feeling_repository.dart';
import 'package:colaborativa_app/presenter/routes/routes.dart';
import 'package:modx/modx.dart';

import 'share_feeling_diary_store.dart';
import 'share_feeling_diary_controller.dart';
import 'share_feeling_diary_view.dart';

class ShareFeelingDiaryPage extends ModxPage {
  @override
  final route = Routes.fellingDiary;

  @override
  final view = const ShareFeelingDiaryView();

  @override
  void binding(i) {
    // Add others dependencies
    bind<FeelingRepository>(FirebaseFeelingRepository());
    bind(RegisterDayFeeling(feelingRepository: i()));
    bind(ShareFeelingDiaryStore(feeling: args['feeling']));
    bind(ShareFeelingDiaryController(registerDayFeeling: i()));
  }
}
