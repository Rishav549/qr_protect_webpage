part of 'qr_bloc.dart';

abstract class QrEvent {}

class QRDataFetchEvent extends QrEvent {
  String uid;

  QRDataFetchEvent({required this.uid});
}
