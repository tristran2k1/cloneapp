import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';

class CountryUtils {
  Country getCountryByIsoCode(String isoCode) {
    try {
      return countryList.firstWhere(
        (country) => country.isoCode!.toLowerCase() == isoCode.toLowerCase(),
      );
    } catch (error) {
      return countryList.firstWhere(
        (country) => country.isoCode!.toLowerCase() == "VN".toLowerCase(),
      );
    }
  }

  Country getCountryByPhoneCode(String phoneCode) {
    try {
      return countryList.firstWhere(
        (country) =>
            country.phoneCode!.toLowerCase() == phoneCode.toLowerCase(),
      );
    } catch (error) {
      return countryList.firstWhere(
        (country) => country.phoneCode!.toLowerCase() == "84".toLowerCase(),
      );
    }
  }
}
