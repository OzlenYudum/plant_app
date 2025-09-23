import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_app/features/home/domain/repositories/home_repository.dart';
import 'package:plant_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:plant_app/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:plant_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:plant_app/features/paywall/presentation/bloc/paywall_bloc.dart';
import 'package:plant_app/features/paywall/presentation/pages/paywall_page.dart';
import 'package:plant_app/features/home/presentation/pages/home_page.dart';
import 'package:plant_app/features/onboarding/domain/repositories/onboarding_repository.dart';

class AppRoute {
  static const onboarding = '/onboarding';
  static const paywall = '/paywall';
  static const home = '/home';
}

GoRouter createRouter({
  required bool onboardingCompleted,
}) {
  return GoRouter(
    initialLocation: onboardingCompleted
        ? AppRoute.paywall
        : AppRoute.onboarding,
    routes: [
      GoRoute(
        path: AppRoute.onboarding,
        builder: (context, state) {
          return BlocProvider(
            create: (_) => OnboardingBloc(
              isOnboardingCompleted: context.read<OnboardingRepository>().isCompleted,
              setOnboardingCompleted: context.read<OnboardingRepository>().setCompleted,
            )..add(const OnboardingEvent.started()),
            child: OnboardingPage(),
          );
        },
      ),
      GoRoute(
        path: AppRoute.paywall,
        builder: (context, state) {
          return BlocProvider(
            create: (_) => PaywallBloc()..add(const PaywallEvent.started()),
            child: const PaywallPage(),
          );
        },
      ),
      GoRoute(
        path: AppRoute.home,
        builder: (context, state) => BlocProvider(
          create: (context) => HomeBloc(context.read<HomeRepository>())..add(const HomeEvent.fetch()),
          child: const HomePage(),
        ),
      ),
    ],
  );
}
