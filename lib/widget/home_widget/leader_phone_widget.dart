import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// 店长联系电话
class LeaderPhoneWidget extends StatelessWidget {

  final String leaderImageUrl;
  final String leaderPhone;

  LeaderPhoneWidget(this.leaderImageUrl,this.leaderPhone);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: _launchURL,
        child: Image.network(leaderImageUrl),
      ),
    );
  }

  void _launchURL() async{
    String url = 'tel:'+leaderPhone;
    print(url);
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Url 不能进行访问，异常';
    }
  }
}