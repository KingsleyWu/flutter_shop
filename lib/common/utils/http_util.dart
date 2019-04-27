import 'package:dio/dio.dart';
import 'package:flutter_shop/common/utils/log_util.dart';
import 'dart:async';
import 'dart:io';

import 'package:flutter_shop/config/service_url.dart';

Future getHomePagesContent() async {
  L.d('get home pages start ...');
  try {
    Response response;
    Dio dio = Dio();
//  dio.options.contentType = ContentType.parse('application/json');
    // dio.options.contentType=ContentType.parse('application/x-www-from-urlencoded'); 错误示范 from ----> form
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    var formData = {'lon': '115.02932', 'lat': '35.76189'};
    response = await dio.post(homePageContent, data: formData);
    if (response.statusCode == 200) {
      L.d('get home pages end ...');
      return response.data;
    } else {
      L.d('get home pages error ...');
      return Exception('服务器异常');
    }
  } catch (e) {
    L.d(e);
    L.d('get home pages error ...');
    return e;
  }
}

Future post(url,{formData}) async {
  L.d('post method start ...');
  try {
    Response response;
    Dio dio = Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    if(formData == null){
      response = await dio.post(url);
    }else {
      response = await dio.post(url, data: formData);
    }
    if (response.statusCode == 200) {
      L.d('post method end ...');
      return response.data;
    } else {
      L.d('post method error ...');
      return Exception('服务器异常');
    }
  } catch (e) {
    L.d(e);
    L.d('post method error ...');
    return e;
  }
}