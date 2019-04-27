import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/model/home_bean.dart';

/// 推荐
class RecommendWidget extends StatelessWidget {
  final List<Recommend> recommendList;

  RecommendWidget({Key key, this.recommendList}) : super(key: key);

  /// 标题
  Widget _getTitleWidget() {
    return new Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10, 2, 0, 5),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Text(
        '商品推荐',
        style: TextStyle(fontSize: 12, color: Colors.pink),
      ),
    );
  }

  /// item
  Widget _getItemWidget(index) {
    Recommend recommend = recommendList[index];
    return InkWell(
      // todo
      onTap: _onItemClick,
      child: Container(
        height: ScreenUtil().setHeight(330),
        width: ScreenUtil().setWidth(250),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                left: BorderSide(
              color: Colors.black12,
              width: 0.5,
            ))),
        child: Column(
          children: <Widget>[
            Image.network(recommend.image),
            Text(recommend.mallPrice.toString()),
            Text(
              recommend.price.toString(),
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemClick(){
    print("ddd");
  }

  /// 推荐列表
  Widget _getRecommendListViewWidget() {
    return Container(
      height: ScreenUtil().setHeight(330),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recommendList.length,
          itemBuilder: (context, index) {
            return _getItemWidget(index);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: ScreenUtil().setHeight(380),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          _getTitleWidget(),
          _getRecommendListViewWidget(),
        ],
      ),
    );
  }
}
