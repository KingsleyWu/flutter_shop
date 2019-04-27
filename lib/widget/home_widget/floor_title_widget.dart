import 'package:flutter/material.dart';
import 'package:flutter_shop/common/utils/log_util.dart';

class FloorTitleWidget extends StatelessWidget {

  final String pictureAddress;

  FloorTitleWidget({Key key, this.pictureAddress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        L.d('FloorTitleWidget 被点击了');
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Image.network(pictureAddress),
      ),
    );
  }
}