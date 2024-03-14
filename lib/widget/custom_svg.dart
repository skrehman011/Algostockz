import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomSvg extends StatelessWidget {
  String? name;
  double? width,height;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset( 'assets/icons/$name.svg') ;
  }

  CustomSvg({
    this.name,
    this.width,
    this.height,
  });
}
