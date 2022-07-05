import 'package:flutter/material.dart';
import 'package:syarpa/utils/colors.dart';

class Button extends StatelessWidget {
  const Button({Key? key, 
    required this.text,
    required this.onPress,
    required this.color,
    required this.width,
    this.borderColor,
    required this.textColor,
    required this.isLoading,
    required this.icon,
  }) : super(key: key);

  final String text;
  final VoidCallback onPress;
  final Color color;
  final double width;
  final Color? borderColor;
  final Color textColor;
  final bool isLoading;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: isLoading ? const CircularProgressIndicator(color: secondaryColor) : Container(
        // color: Colors.pink,
        // alignment: Alignment.center,
        width: MediaQuery.of(context).size.width / 1.2,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 18.0, color: textColor, fontWeight: FontWeight.w600)),
            const SizedBox(width: 10.0),
            icon,
          ],
        ),
      ),
     
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        minimumSize: MaterialStateProperty.all(Size(width, 50.0)),
        elevation: MaterialStateProperty.all(0.0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            // side: BorderSide(color: appPrimaryColor.withOpacity(0.1)),
          )
        )
      )
    );
  }
}
