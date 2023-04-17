import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:riverpod_refresh/utils/app_colors.dart';

class Contstants {
  static Widget kLoader = SpinKitSpinningLines(
    color: AppColors.kPrimaryColor,
    size: 50.0
  );
}
