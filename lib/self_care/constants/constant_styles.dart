import 'package:flutter/material.dart';
import 'package:self_care_mock/core/core.dart';

final kTabContainerMainBorder = BoxDecoration(
  border: Border.all(
    color: AppColors.lightGrey,
    width: 1,
  ),
  borderRadius: BorderRadius.circular(12),
);
const kTabContainerPadding =
    EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0);
final kTabContainerBorder = BoxDecoration(
  border: Border.all(
    color: AppColors.primaryColor,
    width: 1,
  ),
  borderRadius: BorderRadius.circular(8),
  boxShadow: [
    BoxShadow(
      color: AppColors.white.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 3,
    ),
  ],
);

EdgeInsets kLabelPadding(controllerIndex) {
  return controllerIndex <= 1
      ? const EdgeInsets.symmetric(horizontal: 6.0)
      : const EdgeInsets.symmetric(horizontal: 4.0);
}

final kSendMailContainer = BoxDecoration(
  border: Border.all(
    color: AppColors.primaryColor,
    width: 1,
  ),
  borderRadius: BorderRadius.circular(12),
  boxShadow: [
    BoxShadow(
      color: AppColors.white.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 3,
    ),
  ],
);
final kHelpContainer = BoxDecoration(
  color: AppColors.lightGrey.withOpacity(0.3),
  borderRadius: BorderRadius.circular(12),
  boxShadow: [
    BoxShadow(
      color: AppColors.white.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 3,
    ),
  ],
);
