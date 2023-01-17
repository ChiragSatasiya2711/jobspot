import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';

class ComonLinearProgressbar extends StatelessWidget {
  final double chirag;
  final String data;
  const ComonLinearProgressbar({Key? key, required this.chirag, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFProgressBar(
      percentage: chirag ?? 0.7,
      lineHeight: 3,
      leading: Text(
        data,
        style: TextStyle(color: Colors.white, fontSize: 8),
      ),
      alignment: MainAxisAlignment.spaceBetween,
      backgroundColor: Colors.white24,
      progressBarColor: Colors.white,
    );
  }
}
