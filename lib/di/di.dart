// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import '../data/dao/fear_and_greed_index_dao.dart';
import '../data/dao/gsheets_dao.dart';
import '../data/dao/local_repository_dao.dart';
import '../data/interface/fear_and_greed_index_interface.dart';
import '../data/interface/gsheets_interface.dart';
import '../data/interface/local_repository_interface.dart';
import '../util/admob/admob_banner.dart';

void setUpDI() {
  GetIt.I.registerLazySingleton<GsheetsInterface>(_gsheetsDao);
  GetIt.I.registerLazySingleton<LocalRepositoryInterface>(_localRepositoryDao);
  GetIt.I.registerLazySingleton<AdmobBanner>(_admob);
  GetIt.I.registerLazySingleton<GlobalKey<NavigatorState>>(_globalKey);
  GetIt.I.registerLazySingleton<FearAndGreedIndexInterface>(_fearAndGreedIndexDao);
}

GsheetsDao _gsheetsDao() => GsheetsDao();
LocalRepositoryDao _localRepositoryDao() => LocalRepositoryDao();
AdmobBanner _admob() => AdmobBanner();
GlobalKey<NavigatorState> _globalKey() => GlobalKey();
FearAndGreedIndexDao _fearAndGreedIndexDao() => FearAndGreedIndexDao();
