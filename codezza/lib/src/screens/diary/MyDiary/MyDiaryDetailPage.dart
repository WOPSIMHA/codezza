import 'package:codezza/src/common/CommonModule.dart';
import 'package:codezza/src/screens/diary/Widget/DiaryButton.dart';
import 'package:codezza/src/widgets/style.dart';

import 'package:flutter/material.dart';

// 일기 상세보기
class DiaryDetail extends StatefulWidget {
  final dynamic diary;

  const DiaryDetail({Key? key, this.diary}) : super(key: key);

  @override
  _DiaryDetailState createState() => _DiaryDetailState();
}

class _DiaryDetailState extends State<DiaryDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.8),
        body: body(),
      ),
    );
  }

  // Body
  Widget body() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: _imageCard(),
      ),
    );
  }

  // 사진과 일기 내용
  Widget _imageCard() {
    double h = MediaQuery.of(context).size.height; // 전체 화면 세로 사이즈
    double w = MediaQuery.of(context).size.width; // 전체 화면 가로 사이즈
    return Card(
      elevation: 8,
      child: Container(
        width: w * 0.9,
        height: h * 0.6,
        padding: const EdgeInsets.only(
          top: 6,
          left: 16.0,
          right: 16.0,
          bottom: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            button(),
            SizedBox(height: 6),
            Hero(
              tag: '${widget.diary!['d_seq']}',
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.network(
                  '${baseAPIUrl}static/${widget.diary!['ins_id']}/${widget.diary!['d_photo']}',
                  width: 360,
                  height: 240,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 16),
            FontBold(
              title: '${widget.diary!['d_title']}',
              size: 20,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 16),
            Expanded(
              child: FontLight(
                title: '${widget.diary!['d_text']}',
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget button() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DiaryButton(
          title: '삭제',
          onPressed: () {},
          backgroundColor: Colors.redAccent,
        ),
        SizedBox(width: 8),
        DiaryButton(
          title: '수정',
          onPressed: () {},
          backgroundColor: Colors.greenAccent,
        ),
      ],
    );
  }
}
