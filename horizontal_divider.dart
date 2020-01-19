import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Horizontal Divider line with Text

class HorizontalDivider extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Divider divider;

  HorizontalDivider({
    @required this.text,
    this.textStyle,
    this.divider,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: EdgeInsets.only(left: 10.0, right: 15.0),
            child: divider ??
                Divider(
                  color: Colors.black,
                  height: 30,
                )),
      ),
      Text(text, style: textStyle ?? TextStyle()),
      Expanded(
        child: Container(
            margin: EdgeInsets.only(left: 15.0, right: 10.0),
            child: divider ??
                Divider(
                  color: Colors.black,
                  height: 30,
                )),
      ),
    ]);
  }
}
