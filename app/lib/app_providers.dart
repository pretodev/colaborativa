import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colaborativa_app/core/affiliation_service.dart';
import 'package:colaborativa_app/core/clients/colaborativa_api_client.dart';
import 'package:colaborativa_app/core/notification_service.dart';
import 'package:colaborativa_app/ui/controllers/chat_controller.dart';
import 'package:colaborativa_app/utils/context_extension.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:provider/provider.dart';

import 'core/achievement_service.dart';
import 'core/activities_service.dart';
import 'core/app_service.dart';
import 'core/auth_service.dart';
import 'core/chat_service.dart';
import 'core/feeling_service.dart';
import 'core/score_service.dart';
import 'core/user_service.dart';
import 'ui/controllers/app_controller.dart';
import 'ui/controllers/auth_controller.dart';

final appProviders = [
  Provider(
    create: (ctx) => FirebaseAuth.instance,
    lazy: true,
  ),
  Provider(
    create: (ctx) => FirebaseDatabase.instance,
    lazy: true,
  ),
  Provider(
    create: (ctx) => FirebaseFirestore.instance,
    lazy: true,
  ),
  Provider(
    create: (ctx) => FirebaseMessaging.instance,
    lazy: true,
  ),
  Provider(
    create: (ctx) => ColaborativaApiClient(ctx.read()),
    lazy: true,
  ),
  Provider(
    create: (ctx) => AppService(),
    lazy: true,
  ),
  Provider(
    create: (ctx) => FeelingService(
      ctx.userId,
      db: ctx.read(),
      colaborativaApi: ctx.read<ColaborativaApiClient>().client,
    ),
    lazy: true,
  ),
  Provider(
    create: (ctx) => ActivitiesServices(
      ctx.userId,
      database: ctx.read(),
      colaborativaApi: ctx.read<ColaborativaApiClient>().client,
    ),
    lazy: true,
  ),
  Provider(
    create: (ctx) => ChatService(
      ctx.userId,
      colaborativaApi: ctx.read<ColaborativaApiClient>().client,
      firestore: ctx.read(),
      db: ctx.read(),
    ),
    lazy: true,
  ),
  Provider(
    create: (ctx) => AuthService(
      auth: ctx.read(),
      firestore: ctx.read(),
      colaborativaApi: ctx.read<ColaborativaApiClient>().client,
    ),
    lazy: true,
  ),
  Provider(
    create: (ctx) => ScoreService(),
    lazy: true,
  ),
  Provider(
    create: (ctx) => AchievementService(),
    lazy: true,
  ),
  Provider(
    create: (ctx) => UserService(
      ctx.userId,
      firestore: ctx.read(),
      colaborativaApi: ctx.read<ColaborativaApiClient>().client,
    ),
    lazy: true,
  ),
  Provider(
    create: (ctx) => NotificationService(
      ctx.userId,
      firestore: ctx.read(),
      messaging: ctx.read(),
    ),
    lazy: true,
  ),
  Provider(
    create: (ctx) => AffiliationService(
      ctx.userId,
      firestore: ctx.read(),
      colaborativaApi: ctx.read<ColaborativaApiClient>().client,
    ),
    lazy: true,
  ),
  ChangeNotifierProvider<AppController>(
    create: (ctx) => AppController(
      appService: ctx.read<AppService>(),
    ),
  ),
  ChangeNotifierProvider(
    create: (ctx) => AuthController(
      authService: ctx.read<AuthService>(),
    )..loadUser(),
  ),
  ChangeNotifierProvider(
    create: (ctx) => ChatController(
      chatService: ctx.read<ChatService>(),
    ),
  ),
];
