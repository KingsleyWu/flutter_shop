import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/common/utils/log_util.dart';
import 'package:flutter_shop/model/hot_goods.dart';

class HotGoodsWidget extends StatelessWidget {
  final List<HotGoods> hotGoodsList;

  HotGoodsWidget(this.hotGoodsList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _hotTitle,
        _getHotGoodsList(hotGoodsList),
      ],
    );
  }

  void addAll(newHotGoodsList) {
    hotGoodsList.addAll(newHotGoodsList);
  }

  final Widget _hotTitle = Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
    child: Text("火爆商品"),
  );

  Widget _getHotGoodsItem(HotGoods goods) {
    return InkWell(
      onTap: () {
        L.d('点击了火爆商品${goods.name}');
      },
      child: Container(
        width: ScreenUtil().setWidth(372),
        color: Colors.white,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(bottom: 3),
        child: Column(
          children: <Widget>[
            Image.network(goods.image),
            Text(
              goods.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(26),
                color: Colors.pink,
              ),
            ),
            Row(
              children: <Widget>[
                Text('￥${goods.mallPrice}'),
                Text(
                  '￥${goods.price}',
                  style: TextStyle(
                      color: Colors.black26,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getHotGoodsList(List<HotGoods> hotGoodsList) {
    if (hotGoodsList.length != 0) {
      List<Widget> listWidget = hotGoodsList.map((goods) {
        return _getHotGoodsItem(goods);
      }).toList();
      return Wrap(
        spacing: 2,
        children: listWidget,
      );
    }
    return Text(' ');
  }
}
