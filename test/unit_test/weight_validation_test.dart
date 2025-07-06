import 'package:opennutritracker/core/utils/weight_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Weight field validation', () {
    test('should accept valid integer and decimal values', () {
      expect(validateWeight('72'), isNull); // Integer
      expect(validateWeight('72.5'), isNull); // Decimal with dot
      expect(validateWeight('68,8'), isNull); // Decimal with comma
    });

    test('should reject invalid values', () {
      expect(validateWeight(''), isNotNull); // Empty
      expect(validateWeight('abc'), isNotNull); // Letters
      expect(validateWeight('72.5.5'), isNotNull); // Multiple dots
      expect(validateWeight('72,5,5'), isNotNull); // Multiple commas
      expect(validateWeight('-72'), isNotNull); // Negative
    });
    test('should parse weight with comma as double', () {
      expect(double.parse('68,8'.replaceAll(',', '.')), equals(68.8));
    });
  });
}
