import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/home/domain/entities/question.dart';
import 'package:plant_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:plant_app/features/home/presentation/widgets/question_item.dart';

class HomeQuestionSection extends StatelessWidget {
  const HomeQuestionSection({
    super.key,
    this.onQuestionTap,
    this.onRetry,
  });

  final void Function(Question)? onQuestionTap;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164.h,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return _buildContent(context, state);
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, HomeState state) {
    // Normal durum (mevcut kod korundu)
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: state.questions.length,
      separatorBuilder: (context, index) => AppSpacing.xs.horizontalSpace,
      itemBuilder: (context, index) {
        final question = state.questions[index];
        return SizedBox(
          width: 240.w,
          child: GestureDetector(
            onTap: () => onQuestionTap?.call(question),
            child: QuestionItem(
              question: state.questions[index],
              error: state.qError,
              isLoading: state.qLoading,
            ),
          ),
        );
      },
    );
  }
}
