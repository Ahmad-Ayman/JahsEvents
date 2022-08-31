import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:jahsevents/core/di/di.dart';
import 'package:jahsevents/core/utils/dependency.dart';
import 'package:jahsevents/modules/jahs/home/presentation/controller/home_binding.dart';

import 'modules/intro/on_boarding_screen.dart';
import 'modules/jahs/home/data/datasource/remote_data_source/home_remote_data_source.dart';
import 'modules/jahs/home/data/repoistory/home_repository.dart';
import 'modules/jahs/home/domain/entities/banners.dart';
import 'modules/jahs/home/domain/repositories/base_home_repository.dart';
import 'modules/jahs/home/domain/usecases/get_home_banners_usecase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  DependancyCreator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the  root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      title: 'Jahs Events',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingPage(),
      builder: EasyLoading.init(),
    );
  }
}
