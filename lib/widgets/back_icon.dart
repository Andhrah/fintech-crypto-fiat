import 'package:flutter/material.dart';
import 'package:syarpa/utils/colors.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key, this.onPress}) : super(key: key);

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      customBorder: const CircleBorder(),
      child: const SizedBox(
        child: Icon(
          Icons.arrow_back_ios_new_outlined,color: appPrimaryColor,
          size: 20.0,
        ),
      )
    );
  }
}
