import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {

  final Color? bgColor;
  final double? containerWidth;
  final String? itext;

  const ContainerButtonModel({
    super.key,
    this.bgColor,
    this.containerWidth,
    this.itext
});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: containerWidth,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(itext!,style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
