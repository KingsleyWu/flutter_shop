import 'package:flutter/material.dart';
import 'package:flutter_shop/model/home_bean.dart';
import 'package:flutter_shop/widget/home_widget/floor_content_widget.dart';
import 'package:flutter_shop/widget/home_widget/floor_title_widget.dart';

class FloorWidget extends StatelessWidget {
  final String pictureAddress;
  final List<Slide> slides;

  FloorWidget({Key key, this.pictureAddress, this.slides}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          FloorTitleWidget(pictureAddress:pictureAddress),
          FloorContentWidget(slides:slides),
        ],
      ),
    );
  }
}
