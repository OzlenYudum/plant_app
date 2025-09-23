import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/core/themes/themes/themes.dark.dart';
import 'package:plant_app/core/themes/themes/themes.light.dart';
import 'package:plant_app/features/onboarding/data/repositories/onboarding_repository_local.default.dart';
import 'package:plant_app/features/onboarding/data/sources/onboarding_local_ds.dart';
import 'package:plant_app/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/navigation/navigation.dart';

// DI imports
import 'package:plant_app/core/network/dio_client.dart';
import 'package:plant_app/features/home/data/repositories/home_repository.default.dart';
import 'package:plant_app/features/home/data/sources/category_remote_data_source.dart';
import 'package:plant_app/features/home/data/sources/question_remote_data_souce.dart';
import 'package:plant_app/features/home/domain/repositories/home_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await ScreenUtil.ensureScreenSize();

  final prefs = await SharedPreferences.getInstance();
  final local = OnboardingLocalDataSourceImpl(prefs);
  final onbRepo = OnboardingRepositoryLocal(local);
  final completed = await onbRepo.isCompleted();

  // Home DI
  final dio = DioClient.build(baseUrl: 'https://dummy-api-jtg6bessta-ey.a.run.app/');
  final HomeRepository homeRepo = DefaultHomeRepository(
    CategoryRemoteDataSourceImpl(dio),
    QuestionRemoteDataSourceImpl(dio),
  );

   runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Sadece debug/release dışı modlarda çalışsın
      builder: (context) => MyApp(
        onbRepo: onbRepo,
        onboardingCompleted: completed,
        homeRepo: homeRepo,
      ),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.onbRepo, required this.onboardingCompleted, required this.homeRepo});
  final OnboardingRepository onbRepo;
  final bool onboardingCompleted;
  final HomeRepository homeRepo;

  @override
  Widget build(BuildContext context) {
    final router = createRouter(onboardingCompleted: onboardingCompleted);
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (_, __) {
return MultiRepositoryProvider(
  providers: [
    RepositoryProvider<HomeRepository>.value(value: homeRepo),
    RepositoryProvider<OnboardingRepository>.value(value: onbRepo),
  ],
  child: MaterialApp.router(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: const LightAppTheme().themeData,
    darkTheme: const DarkAppTheme().themeData,
    themeMode: ThemeMode.system,
    routerConfig: router,
  ),
);
      },
    );
  }
}