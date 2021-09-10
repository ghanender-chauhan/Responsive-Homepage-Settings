import 'package:flutter/material.dart';
import 'package:homepage_responsive/size_config.dart';


class ResponsiveWidget extends StatelessWidget {
  final Widget portraitLayout;
  final Widget landscapeLayout;

  const ResponsiveWidget({
    Key ?key,
    required this.portraitLayout,
    required this.landscapeLayout ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (SizeConfig.isPortrait && SizeConfig.isMobilePortrait) {
      return portraitLayout;
    } else {
      return landscapeLayout;
    }
  }
}