import 'package:flutter/material.dart';

double grid_spacer = 8.0;

class Dimension {
  final double spacerValue;
  DimensionSide _left;
  DimensionSide _top;
  DimensionSide _right;
  DimensionSide _bottom;
  DimensionSide _x;
  DimensionSide _y;
  DimensionSide _all;

  Dimension(this.spacerValue) {
    _left = DimensionSide(spacerValue, SidesFlag(1, 0, 0, 0));
    _top = DimensionSide(spacerValue, SidesFlag(0, 1, 0, 0));
    _right = DimensionSide(spacerValue, SidesFlag(0, 0, 1, 0));
    _bottom = DimensionSide(spacerValue, SidesFlag(0, 0, 0, 1));
    _x = DimensionSide(spacerValue, SidesFlag(1, 0, 1, 0));
    _y = DimensionSide(spacerValue, SidesFlag(0, 1, 0, 1));
    _all = DimensionSide(spacerValue, SidesFlag(1, 1, 1, 1));
  }

  DimensionSide get left => _left;
  DimensionSide get top => _top;
  DimensionSide get right => _right;
  DimensionSide get bottom => _bottom;
  DimensionSide get x => _x;
  DimensionSide get y => _y;
  DimensionSide get all => _all;
}

class DimensionSide {
  double spacer;
  SidesFlag sidesFlag;

  DimensionSide(this.spacer, this.sidesFlag);
  
  EdgeInsets get none {
    return DimensionSize(spacer, sidesFlag, _Helper.none).data;
  }
  EdgeInsets get xxs {
    return DimensionSize(spacer, sidesFlag, _Helper.xxs).data;
  }
  EdgeInsets get xs {
    return DimensionSize(spacer, sidesFlag, _Helper.xs).data;
  }
  EdgeInsets get sm {
    return DimensionSize(spacer, sidesFlag, _Helper.sm).data;
  }
  EdgeInsets get md {
    return DimensionSize(spacer, sidesFlag, _Helper.md).data;
  }
  EdgeInsets get lg {
    return DimensionSize(spacer, sidesFlag, _Helper.lg).data;
  }
  EdgeInsets get xl {
    return DimensionSize(spacer, sidesFlag, _Helper.xl).data;
  }
  EdgeInsets get xxl {
    return DimensionSize(spacer, sidesFlag, _Helper.xxl).data;
  }
}

class DimensionSize {
  double spacer;
  SidesFlag sidesFlag;
  double factor;
  
  DimensionSize(this.spacer, this.sidesFlag, this.factor);
  
  get data => EdgeInsets.fromLTRB(
      sidesFlag.leftFlag * spacer * factor,
      sidesFlag.topFlag * spacer * factor,
      sidesFlag.rightFlag * spacer * factor,
      sidesFlag.bottomFlag * spacer * factor,
    );
  
}

class SidesFlag {
  double leftFlag = 0;
  double topFlag = 0;
  double rightFlag = 0;
  double bottomFlag = 0;
  
  SidesFlag(
    this.leftFlag,
    this.topFlag,
    this.rightFlag,
    this.bottomFlag  
  );
}


class _Helper {
  static double none = 0;
  static double xxs = 1;
  static double xs = 2;
  static double sm = 3;
  static double md = 4;
  static double lg = 5;
  static double xl = 6;
  static double xxl = 7;
}

Dimension spacer = Dimension(grid_spacer);