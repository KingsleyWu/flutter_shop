import 'dart:convert';
/// 用于打印log
class L {
  /// 默认 TAG
  static const String _TAG = "LOGGER";
  /// DEBUG 模式
  static const String DEBUG = ' D: ';
  /// ERROR 模式
  static const String ERROR = ' E: ';
  /// ASSERT 模式
  static const String ASSERT = ' A: ';
  /// INFO 模式
  static const String INFO = ' I: ';
  /// VERBOSE 模式
  static const String VERBOSE = ' V: ';
  /// WARN 模式
  static const String WARN = ' W: ';
  /// JSON 模式
  static const String JSON = ' JSON: ';
  /// 换行符
  static const String LINE_BREAK = ' \n';
  /// 开始符
  static const String TOP_CORNER = "┌";
  /// 中间开始符
  static const String MIDDLE_CORNER = "├";
  /// 左边开始符号
  static const String LEFT_BORDER = "│ ";
  /// 底部开始符号
  static const String BOTTOM_CORNER = "└";
  /// 边界1
  static const String SIDE_DIVIDER =
      "────────────────────────────────────────────────────────";
  /// 边界2
  static const String MIDDLE_DIVIDER =
      "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
  /// 顶部边界
  static const String TOP_BORDER =
      TOP_CORNER + SIDE_DIVIDER + SIDE_DIVIDER + LINE_BREAK;
  /// 中间边界
  static const String MIDDLE_BORDER =
      MIDDLE_CORNER + MIDDLE_DIVIDER + MIDDLE_DIVIDER + LINE_BREAK;
  /// 底部边界
  static const String BOTTOM_BORDER =
      BOTTOM_CORNER + SIDE_DIVIDER + SIDE_DIVIDER + LINE_BREAK;

  /// 标签
  static String sTAG = _TAG;
  /// 是否是debug模式,true: log 输出. false：log 不输出.
  static bool debuggable = false;

  /// 初始化log
  /// @param isDebug 是否是debug模式 默认false
  /// @param tag  标签 默认 “LOGGER”
  static void init({bool isDebug, String tag: _TAG}) {
    debuggable = isDebug;
    sTAG = tag;
  }

  /// ERROR 模式 打印
  /// @param tag 标签
  /// @param object 打印的内容
  static void e(Object object, {String tag}) {
    _printLog(tag, ERROR, object);
  }

  /// VERBOSE 模式 打印
  /// @param tag 标签
  /// @param object 打印的内容
  static void v(Object object, {String tag}) {
    if (debuggable) {
      _printLog(tag, VERBOSE, object);
    }
  }

  /// DEBUG 模式 打印
  /// @param tag 标签
  /// @param object 打印的内容
  static void d(Object object, {String tag}) {
    if (debuggable) {
      _printLog(tag, DEBUG, object);
    }
  }

  /// INFO 模式 打印
  /// @param tag 标签
  /// @param object 打印的内容
  static void i(Object object, {String tag}) {
    if (debuggable) {
      _printLog(tag, INFO, object);
    }
  }

  /// ASSERT 模式 打印
  /// @param tag 标签
  /// @param object 打印的内容
  static void a(Object object, {String tag}) {
    if (debuggable) {
      _printLog(tag, ASSERT, object);
    }
  }

  /// WARN 模式 打印
  /// @param tag 标签
  /// @param object 打印的内容
  static void w(Object object, {String tag}) {
    if (debuggable) {
      _printLog(tag, WARN, object);
    }
  }

  /// JSON 模式 打印
  /// @param jsonStr json 文本
  static void js(String jsonStr) {
    if (debuggable) {
      if (jsonStr.isEmpty) {
        d("Empty/Null json content");
        return;
      }
      try {
        jsonStr = jsonStr.trim();
        if (jsonStr.startsWith("{") || jsonStr.startsWith("[")) {
          jsonStr = json.encode(jsonStr).toString();
          List<String> tempArray = List<String>();
          String endStr = '';
          while ((jsonStr.length > 500)) {
            tempArray.add(jsonStr.substring(0, 500));
            jsonStr = jsonStr.substring(500);
          }
          endStr = jsonStr;
          _printTopBorder();
          if (tempArray.isNotEmpty) {
            tempArray.forEach((str) => _print(str.replaceAll('\\', '')));
          }
          if (endStr.isNotEmpty) {
            _print(endStr.replaceAll('\\', ''));
          }
          _printBottomBorder();
          return;
        }
        e("Invalid Json");
      } catch (e1) {
        print(e1);
        e("Invalid Json");
      }
    }
  }

  /// ERROR 模式 打印
  /// @param tag 标签
  /// @param mode 模式
  /// @param object 打印的内容
  static void _printLog(String tag, String mode, Object object) {
    StringBuffer sb = new StringBuffer();
    sb.write(LINE_BREAK);
    sb.write(TOP_BORDER);
    sb.write((tag == null || tag.isEmpty) ? sTAG : tag);
    sb.write(mode);
    sb.write(object);
    sb.write(LINE_BREAK);
    sb.write(BOTTOM_BORDER);
    print(sb.toString());
  }

  /// 打印顶部边界
  static void _printTopBorder() {
    print(TOP_BORDER);
  }

  /// 打印底部边界
  static void _printBottomBorder() {
    print(BOTTOM_BORDER);
  }

  /// JSON 模式 打印
  /// @param object 打印的内容
  static void _print(Object object) {
    StringBuffer sb = new StringBuffer();
    sb.write(sTAG);
    sb.write(JSON);
    sb.write(LEFT_BORDER);
    sb.write(object);
    print(sb.toString());
  }
}
