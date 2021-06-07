import '../../widgets/style_font.dart';
import '../../widgets/PrimaryButton.dart';
import 'LoginPage.dart';

import 'package:flutter/material.dart';

// 회원가입 완료 => 각각에 데이터를 합쳐서 DB에 저장한 후 로그인 페이지로 이동함.
class SignUpPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  // Body
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 168,
        left: 44,
        right: 44,
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FontMedium(
            title: '회원가입이',
            size: 36,
          ),
          FontMedium(
            title: '완료되었습니다.',
            size: 36,
          ),
          _buildButton(context),
        ],
      ),
    );
  }

  // 회원가입 완료 버튼
  Widget _buildButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: PrimaryButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => LoginPage()),
          );
        },
        // onPressed: null,
        title: '로그인하고 프로필 작성하기',
      ),
    );
  }
}
