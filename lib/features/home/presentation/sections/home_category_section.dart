import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:plant_app/features/home/presentation/widgets/category_item.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.w,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return GridView.builder(
            itemCount: state.categories.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: AppSpacing.xl.h,
              crossAxisSpacing: AppSpacing.xl.w,
              childAspectRatio: 1.0,
              
            ),
            itemBuilder: (context, index) =>
                CategoryItem(category: state.categories[index]),
          );
        },
      ),
    );
  }
}
