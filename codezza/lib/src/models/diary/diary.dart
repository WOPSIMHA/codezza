import 'package:freezed_annotation/freezed_annotation.dart';

part 'diary.freezed.dart';

part 'diary.g.dart';

/// 일기장
@freezed
class Diary with _$Diary {
  factory Diary({
    /// pk 일기 일련번호
    required int dSEQ,

    /// 일기 제목
    required String dTitle,

    /// 일기 내용
    required String dText,

    /// 썸네일 이미지 정보
    required String dThumbnail,

    /// 공개.비공개 플래그
    required String dPrivate,

    /// 일기 타입 : 개인 or 그룹
    required String dDiaryType,

    /// pk, fk 그룹 일련번호
    required int dgSEQ,

    /// fk 등록자
    required String insID,

    /// 등록일
    required DateTime insDT,

    /// 수정일
    required DateTime uptDT,
  }) = _Diary;

  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);
}
