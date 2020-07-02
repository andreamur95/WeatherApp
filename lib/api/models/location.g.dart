// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return $checkedNew('Location', json, () {
    final val = Location(
      title: $checkedConvert(json, 'title', (v) => v as String),
      locationType: $checkedConvert(json, 'location_type',
          (v) => _$enumDecodeNullable(_$LocationTypeEnumMap, v)),
      latlng: $checkedConvert(json, 'latlng',
          (v) => v == null ? null : Latlng.fromJson(v as String)),
      woeid: $checkedConvert(json, 'woeid', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {'locationType': 'location_type'});
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$LocationTypeEnumMap = {
  LocationType.city: 'City',
  LocationType.region: 'Region',
  LocationType.state: 'State',
  LocationType.province: 'Province',
  LocationType.country: 'Country',
  LocationType.continent: 'Continent',
};

Latlng _$LatlngFromJson(Map<String, dynamic> json) {
  return $checkedNew('Latlng', json, () {
    final val = Latlng(
      latitude:
          $checkedConvert(json, 'latitude', (v) => (v as num)?.toDouble()),
      longitude:
          $checkedConvert(json, 'longitude', (v) => (v as num)?.toDouble()),
    );
    return val;
  });
}
