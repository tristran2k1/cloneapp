class CreditPayment {
  final String name;
  final String cardNumber;
  final String expiration;
  final String cvv;
  final String country;

  CreditPayment({
    this.name = "",
    this.cardNumber = "",
    this.expiration = "",
    this.cvv = "",
    this.country = "",
  });

  Map<String, String?> toJson() {
    return {
      "name": name,
      "number": cardNumber,
      "expDate": expiration,
      "cvv": cvv,
      "country": country,
    };
  }
}
