import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/paywall/presentation/constants/paywall_features_static.dart';
import 'package:plant_app/features/paywall/presentation/mappers/paywall_feature_mapper.dart';
import 'package:plant_app/features/paywall/presentation/widgets/product_feature_item.dart';

class PaywallProductFeaturesSection extends StatelessWidget {
  const PaywallProductFeaturesSection({
    super.key,
    this.physics = const ClampingScrollPhysics(),
  });

  final ScrollPhysics physics;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fullWidth  = size.width;
    final fullHeight = size.height;
    final data =  PaywallStaticFeatures;
    return SizedBox(
      height: fullHeight > 740 ? fullHeight * 0.155 : fullHeight * 0.18,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: physics,
        itemBuilder: (context, i) {
          final f = data[i];
          final child = ProductFeatureItem(
            title: f.title,
            description: f.description,
            icon: f.iconAsset, // mapper extension
          );
          final w = fullWidth *  0.43;
return SizedBox(width: w, child: child);
        },
        separatorBuilder: (context, _) => AppSpacing.xs.horizontalSpace,
        itemCount: data.length,
      ),
    );
  }
}