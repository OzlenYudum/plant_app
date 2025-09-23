import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/paywall/presentation/constants/paywall_products_static.dart';
import 'package:plant_app/features/paywall/presentation/widgets/product_item.dart';
import 'package:plant_app/features/paywall/presentation/bloc/paywall_bloc.dart';

class PaywallProductsSection extends StatelessWidget {
  const PaywallProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = paywallStaticProducts;
    final selectedIndex = context.select<PaywallBloc, int>(
      (b) => b.state.selectedIndex,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () => context
              .read<PaywallBloc>()
              .add(const PaywallEvent.productSelected(0)),
          child: ProductItem(
            title: products[0].title,
            description: products[0].description,
            highlightText: products[0].highlightText,
            selected: selectedIndex == 0,
          ),
        ),
        AppSpacing.xl.verticalSpace,
        GestureDetector(
          onTap: () => context
              .read<PaywallBloc>()
              .add(const PaywallEvent.productSelected(1)),
          child: ProductItem(
            title: products[1].title,
            description: products[1].description,
            savingPercantage: products[1].savingPercantage,
            highlightText: products[1].highlightText,
            selected: selectedIndex == 1,
          ),
        ),
      ],
    );
  }
}