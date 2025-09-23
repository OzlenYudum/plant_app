import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/core/themes/extensions.dart';
import 'package:plant_app/core/themes/radius.dart';
import 'package:plant_app/core/themes/spacing.dart';
import 'package:plant_app/features/home/domain/entities/question.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({
    super.key,
    required this.question,
    this.isLoading = false,
    this.onRetry,
    this.error,
  });

  final Question question;
  final bool isLoading;
  final VoidCallback? onRetry;
  final String? error;
  

  @override
  Widget build(BuildContext context) {
    // Loading durumu - item seviyesinde
    if (isLoading) {
      return _buildLoadingItem();
    }

    // Data validation
    final hasValidImageUrl = question.imageUrl.isNotEmpty;
    final hasValidTitle = question.title.isNotEmpty;

    return Container(
      decoration: BoxDecoration(borderRadius: AppRadius.circularM),
      child: Stack(
        children: [
          // Image kısmı - validation ile
          _buildImageWidget(context, hasValidImageUrl),
      
          // Title kısmı - validation ile
          Positioned(
            bottom: AppSpacing.xl.h,
            left: AppSpacing.l.w,
            right: AppSpacing.l.w,
            child: Text(
              hasValidTitle ? question.title : '',
              style: context.typographies.bodySmall.withColor(
                hasValidTitle
                    ? context.colors.textOnPrimary
                    : Colors.grey[300]!,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  // Item seviyesinde loading widget
  Widget _buildLoadingItem() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Stack(
        children: [
          // Skeleton background
          Container(
            color: Colors.grey[300],
            child: const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
          // Shimmer effect için
          Positioned(
            bottom: AppSpacing.m.h,
            left: AppSpacing.l.w,
            right: AppSpacing.l.w,
            child: Container(
              height: 16.h,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWidget(BuildContext context, bool hasValidImageUrl) {
    if (!hasValidImageUrl) {
      // Image URL yoksa fallback with retry option
      return Container(
        color: Colors.grey[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_not_supported,
                color: Colors.grey[600],
                size: 32.sp,
              ),
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
      );
    }

    return ClipRRect(
      borderRadius: AppRadius.circularM,
      child: CachedNetworkImage(
        imageUrl: question.imageUrl,
        fit: BoxFit.cover,
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
    );
  }
}
