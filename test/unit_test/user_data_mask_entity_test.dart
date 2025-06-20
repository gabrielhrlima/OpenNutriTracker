import 'package:flutter_test/flutter_test.dart';
import 'package:opennutritracker/features/onboarding/domain/entity/user_data_mask_entity.dart';
import 'package:opennutritracker/features/onboarding/domain/entity/user_gender_selection_entity.dart';
import 'package:opennutritracker/features/onboarding/domain/entity/user_goal_selection_entity.dart';
import 'package:opennutritracker/features/onboarding/domain/entity/user_activity_selection_entity.dart';

void main() {
  group('UserDataMaskEntity.checkDataProvided', () {
    test('All fields provided returns true', () {
      final entity = UserDataMaskEntity(
        gender: UserGenderSelectionEntity.genderMale,
        birthday: DateTime(2000, 1, 1),
        height: 180.0,
        weight: 75.0,
        activity: UserActivitySelectionEntity.active,
        goal: UserGoalSelectionEntity.maintainWeight,
      );
      expect(entity.checkDataProvided(), isTrue);
    });

    test('Missing gender returns false', () {
      final entity = UserDataMaskEntity(
        gender: null,
        birthday: DateTime(2000, 1, 1),
        height: 180.0,
        weight: 75.0,
        activity: UserActivitySelectionEntity.active,
        goal: UserGoalSelectionEntity.maintainWeight,
      );
      expect(entity.checkDataProvided(), isFalse);
    });

    test('Missing birthday returns false', () {
      final entity = UserDataMaskEntity(
        gender: UserGenderSelectionEntity.genderMale,
        birthday: null,
        height: 180.0,
        weight: 75.0,
        activity: UserActivitySelectionEntity.active,
        goal: UserGoalSelectionEntity.maintainWeight,
      );
      expect(entity.checkDataProvided(), isFalse);
    });

    test('Missing height returns false', () {
      final entity = UserDataMaskEntity(
        gender: UserGenderSelectionEntity.genderMale,
        birthday: DateTime(2000, 1, 1),
        height: null,
        weight: 75.0,
        activity: UserActivitySelectionEntity.active,
        goal: UserGoalSelectionEntity.maintainWeight,
      );
      expect(entity.checkDataProvided(), isFalse);
    });

    test('Missing weight returns false', () {
      final entity = UserDataMaskEntity(
        gender: UserGenderSelectionEntity.genderMale,
        birthday: DateTime(2000, 1, 1),
        height: 180.0,
        weight: null,
        activity: UserActivitySelectionEntity.active,
        goal: UserGoalSelectionEntity.maintainWeight,
      );
      expect(entity.checkDataProvided(), isFalse);
    });

    test('Missing activity returns false', () {
      final entity = UserDataMaskEntity(
        gender: UserGenderSelectionEntity.genderMale,
        birthday: DateTime(2000, 1, 1),
        height: 180.0,
        weight: 75.0,
        activity: null,
        goal: UserGoalSelectionEntity.maintainWeight,
      );
      expect(entity.checkDataProvided(), isFalse);
    });

    test('Missing goal returns false', () {
      final entity = UserDataMaskEntity(
        gender: UserGenderSelectionEntity.genderMale,
        birthday: DateTime(2000, 1, 1),
        height: 180.0,
        weight: 75.0,
        activity: UserActivitySelectionEntity.active,
        goal: null,
      );
      expect(entity.checkDataProvided(), isFalse);
    });
  });
}
