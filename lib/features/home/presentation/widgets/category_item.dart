import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/home/domain/entities/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, this.onRetry, this.onTap});
  final Category category;
  final VoidCallback? onRetry;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final hasValidImageUrl = category.imageUrl.isNotEmpty;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(borderRadius: AppRadius.circularM,border: Border.all(color: context.colors.borderCategory.withOpacity(0.18),width: 0.5.w)),
        child: Stack(
          children: [
            // Image kısmı - validation ile
            _buildImageWidget(context, hasValidImageUrl),
            // Title kısmı - validation ile
            Positioned(
              top: AppSpacing.mm.h,
              left: AppSpacing.s.w,
              right: 56.w,
              child: Text(category.title,style: context.typographies.body.withColor(context.colors.textPrimary),maxLines: 2,overflow: TextOverflow.ellipsis,softWrap: true,),
            ),      
          ],
        ),
      ),
    );
  }

  Widget _buildImageWidget(BuildContext context, bool hasValidImageUrl) {
    if (!hasValidImageUrl) {
      return Container(
        color: Colors.grey[300],
        child: Center(child: Icon(Icons.image_not_supported)),
      );
    }

       return SizedBox.expand(
         child: ClipRRect(
               borderRadius: AppRadius.circularM,
               child: CachedNetworkImage(
          imageUrl: category.imageUrl,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          alignment: Alignment.center,
          placeholder: (context, url) => Container(
            color: Colors.grey[300],
            child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
          ),
          errorWidget: (context, url, error) => Container(
            color: Colors.grey[300],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.broken_image, color: Colors.grey[600], size: 32.sp),
                  if (onRetry != null) ...[
                    SizedBox(height: AppSpacing.xs.h),
                    IconButton(
                      onPressed: onRetry,
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.grey[600],
                        size: 20.sp,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
               ),
             ),
       );
  }
}