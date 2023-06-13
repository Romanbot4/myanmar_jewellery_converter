import 'package:flutter_test/flutter_test.dart';
import 'package:myanmar_jewellery_converter/myanmar_jewellery_converter.dart';

void main() {
  test(
    'Myanmar Jewellery Converter',
    () {
      const braceletMass = MyanmarMass(kyat: 1, pae: 0, yawe: 0);
      final converted = braceletMass.changeGoldState(
        GoldStateConstants.A0,
        GoldStateConstants.E1,
      );

      print(converted.detailsString);

      const unitPricePerKyat = 2307900.0;
      final price = braceletMass.calculatePriceByKyat(unitPricePerKyat);

      print("Price : $price");

      // final stone = MyanmarGem(carat: 20);
      // print("Stone${stone.detailsString}");
    },
  );
}
