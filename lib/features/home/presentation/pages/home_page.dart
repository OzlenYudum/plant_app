import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants/app_assets.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:plant_app/features/home/presentation/sections/home_category_section.dart';
import 'package:plant_app/features/home/presentation/sections/home_header_section.dart';
import 'package:plant_app/features/home/presentation/sections/home_question_section.dart';
import 'package:plant_app/features/home/presentation/widgets/free_premium.dart';
import 'package:plant_app/shared/widgets/custom_floating_action_button.dart';
import 'package:plant_app/shared/widgets/custom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeaderSection(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppSpacing.xxl.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSpacing.l.w),
                    child: FreePremium(),
                  ),
                  AppSpacing.xxl.verticalSpace,
                  Padding(
                    padding: EdgeInsets.only(left: AppSpacing.l.w),
                    child: HomeQuestionSection(onQuestionTap: (question) {
                      context.read<HomeBloc>().add(HomeEvent.questionSelected(question));
                    }),
                  ),
                  AppSpacing.xxl.verticalSpace,
                  HomeCategorySection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return CustomNavigationBar(
            onTap: (index) =>
                context.read<HomeBloc>().add(HomeEvent.setCurrentIndex(index)),
            currentIndex: state.currentIndex,
          );
        },
      ),
      floatingActionButton: SizedBox(
        width: 66.w,
        height: 66.h,
        child: Transform.translate(
          offset: Offset(0, 5.h),
          child: CustomFloatingActionButton(
            onPressed: () {},
            child: SvgPicture.asset(AppAssets.scanIcon),
            size: 66.w,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );

  }
}
