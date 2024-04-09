import 'package:flutter/material.dart';

import '../configs/x_configs.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.mobileBody, this.tabletBody, this.desktopBody}) : super(key: key);
  final Widget mobileBody;
  final Widget? tabletBody;
  final Widget? desktopBody;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimension){
        if(dimension.maxWidth < kTabletBreakpointWidth){
          return mobileBody;
        }else if(dimension.maxWidth >= kTabletBreakpointWidth && dimension.maxWidth < kDesktopBreakpointWidth){
          return tabletBody ?? mobileBody;
        }else{
          return desktopBody ?? mobileBody;
        }
      },
    );
  }
}