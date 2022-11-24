import 'package:flutter/material.dart';

const kMobileWidth = 650.0;

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

bool isMobile(context) {
  return width(context) < kMobileWidth;
}
