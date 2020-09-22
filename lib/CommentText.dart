import 'package:flutter/material.dart';

class CommentText extends StatefulWidget {
  CommentText({Key key}) : super(key: key);

  @override
  _CommentTextState createState() => _CommentTextState();
}

class _CommentTextState extends State<CommentText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('@人民日报'),
            subtitle: Text(
              '人民日报是中国共产党中央委员会机关报。报纸于1948年6月15日在河北省平山县里庄创刊。时由《晋察冀日报》和晋冀鲁豫《人民日报》合并而成，为华北中央局机关报，同时担负党中央机关报职能。毛泽东同志亲笔为人民日报题写报名',
              style: TextStyle(),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
