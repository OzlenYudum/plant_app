import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/core/navigation/navigation.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/onboarding/presentation/widgets/onboarding_page_indicator.dart';
import 'package:plant_app/features/onboarding/presentation/widgets/terms_privacy_text.dart';

import '../../data/sources/onboarding_items_local.dart';
import '../../domain/entities/onboarding_item.dart';
import '../sections/onboarding_header_section.dart';
import '../sections/onboarding_image_section.dart';
import '../sections/onboarding_bottom_section.dart';
import '../../../onboarding/presentation/bloc/onboarding_bloc.dart';
import '../../../../constants/app_strings.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({super.key});
  final items = OnboardingItemsLocal.items;

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    final initialIndex = context.read<OnboardingBloc>().state.pageIndex;
    _controller = PageController(initialPage: initialIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    final count = items.length;
    return MultiBlocListener(
      listeners: [
        BlocListener<OnboardingBloc, OnboardingState>(
          listenWhen: (p, c) => p.pageIndex != c.pageIndex,
          listener: (_, s) {
            if (_controller.hasClients) {
              _controller.animateToPage(
                s.pageIndex,
                duration: const Duration(milliseconds: 450),
                curve: Curves.easeOutCubic,
              );
            }
          },
        ),
        BlocListener<OnboardingBloc, OnboardingState>(
          listenWhen: (p, c) => p.effect != c.effect,
          listener: (context, state) async {
            if (state.effect == OnboardingEffect.navigateToPaywall) {
               context.read<OnboardingBloc>().add(const OnboardingEvent.effectConsumed());
  await context.push(AppRoute.paywall); // sadece bekle
  context.read<OnboardingBloc>().add(const OnboardingEvent.paywallClosed());
            }
          },
        ),
        BlocListener<OnboardingBloc, OnboardingState>(
          listenWhen: (p, c) => p.effect != c.effect,
          listener: (context, state) {
            if (state.effect == OnboardingEffect.navigateToHome) {
              context.read<OnboardingBloc>().add(
                const OnboardingEvent.effectConsumed(),
              );
              context.go(AppRoute.home);
            }
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: context.colors.backgroundPrimary,
        body: SafeArea(
          child: PageView.builder(
            controller: _controller,
            itemCount: count,
            onPageChanged: (i) => context.read<OnboardingBloc>().add(
              OnboardingEvent.pageChanged(i),
            ),
            itemBuilder: (context, index) {
              final item = items[index];
              final isFirst = index == 0;

              Widget footer;
              switch (item.footer) {
                case OnbFooter.terms:
                  footer = TermsPrivacyText();
                  break;
                case OnbFooter.dots:
                  footer = OnboardingPageIndicator(
                    controller: _controller,
                    count: count,
                    spacing: AppSpacing.s.w,
                    inactiveWidth: AppSpacing.xs.w,
                    inactiveHeight: AppSpacing.xs.h,
                    activeWidth: AppSpacing.m.w,
                    activeHeight: AppSpacing.m.h,
                    activeColor: context.colors.textPrimary,
                    inactiveColor: context.colors.textPrimary.withOpacity(0.25),
                    borderRadius: AppRadius.m,
                  );
                  break;
              }

              return Stack(
                children: [
                  OnboardingImageSection(assetPath: item.imageAsset),
                 if(item.brushAsset != null)
                  Positioned(
                    top: item.topPosition?.h ?? 54.h,
                    right: item.rightPosition?.w ?? 50.w,
                    child: Image.asset(
                      item.brushAsset!,
                      width: 138.w,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSpacing.l.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: AppSpacing.xxl.h),
                          child: OnboardingHeaderSection(
                            title: item.title,
                            highlight: item.highlight ?? '',
                            subtitle: item.subtitle ?? '',
                            highlightWeight:
                                item.highlightWeight ?? FontWeight.w700,
                            baseWeight: item.baseWeight ?? FontWeight.w400,
                          ),
                        ),

                        Spacer(),
                        OnboardingBottomSection(
                          buttonText: isFirst
                              ? AppStrings.getStartedText
                              : AppStrings.continueText,
                          onPressed: () => context.read<OnboardingBloc>().add(
                            const OnboardingEvent.continuePressed(),
                          ),
                          footer: footer,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
