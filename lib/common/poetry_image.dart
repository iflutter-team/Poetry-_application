import 'package:flutter/material.dart';

import '../utils/asset_res.dart';

Widget poetryPageImage({double? height, double? width}) {
  return Image.asset(
    AssetRes.loginScreenImg,
    height: height,
    width: width,
  );
}
