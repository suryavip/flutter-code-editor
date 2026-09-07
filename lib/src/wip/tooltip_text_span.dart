import 'package:flutter/material.dart';

const double _lineNumberWidth = 42;
const TextAlign _lineNumberAlign = TextAlign.right;
const double _lineNumberMargin = 5;

class TooltipTextSpan extends WidgetSpan {
  TooltipTextSpan({
    required String message,
    required String number,
    required TextStyle? style,
  }) : super(
         child: Tooltip(
           message: message,
           child: Container(
             padding: EdgeInsets.only(right: _lineNumberMargin),
             decoration: BoxDecoration(
               color: Colors.red,
               borderRadius: BorderRadius.all(Radius.circular(4)),
             ),
             width: _lineNumberWidth,
             child: Text(number, textAlign: _lineNumberAlign, style: style),
           ),
         ),
       );
}
