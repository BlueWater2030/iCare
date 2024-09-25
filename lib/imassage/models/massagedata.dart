import 'package:meta/meta.dart';

@immutable
class MassageData {
  final String senderName;
  final String message;
  final DateTime messageDate;
  final String dateMessage;
  final String profilePicture;

  const MassageData(
      {required this.senderName,
      required this.message,
      required this.messageDate,
      required this.dateMessage,
      required this.profilePicture});
}
