import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_payment.freezed.dart';

@unfreezed
class CreditPayment with _$CreditPayment {
  factory CreditPayment({
    @Default("") String name,
    @Default("") String cardNumber,
    @Default("") String expiration,
    @Default("") String cvv,
    @Default("") String country,
  }) = _CreditPayment;
}
