enum RoutineType {
  vehicle,
  generator;

  // Convert enum to string
  String toStr() => name;

  // Convert string to enum
  static RoutineType fromStr(String value) {
    return RoutineType.values.firstWhere(
      (type) => type.name.toLowerCase() == value.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid RoutineType: $value'),
    );
  }

  // Get display name with proper capitalization
  String get displayName => name[0].toUpperCase() + name.substring(1);

  // Check if type is vehicle
  bool get isVehicle => this == RoutineType.vehicle;

  // Check if type is generator
  bool get isGenerator => this == RoutineType.generator;

  // Get operator title based on type
  String get operatorTitle => isVehicle ? 'Driver' : 'Operator';

  // Get asset name based on type
  String get assetName => isVehicle ? 'Vehicle' : 'Generator';
}

enum FuelType {
  cash,
  credit;

  // Convert enum to string
  String toStr() => name;

  // Convert string to enum
  static RoutineType fromStr(String value) {
    return RoutineType.values.firstWhere(
      (type) => type.name.toLowerCase() == value.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid RoutineType: $value'),
    );
  }

  // Get display name with proper capitalization
  String get displayName => name[0].toUpperCase() + name.substring(1);

  // Check if type is vehicle
  bool get isCash => this == FuelType.cash;

  // Check if type is generator
  bool get isCredit => this == FuelType.credit;
}

enum CheckingOutsourced {
  company,
  outsoruced;

  // Convert enum to string
  String toStr() => name;

  // Convert string to enum
  static RoutineType fromStr(String value) {
    return RoutineType.values.firstWhere(
      (type) => type.name.toLowerCase() == value.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid RoutineType: $value'),
    );
  }

  // Get display name with proper capitalization
  String get displayName => name[0].toUpperCase() + name.substring(1);

  // Check if type is vehicle
  bool get is110 => this == CheckingOutsourced.company;

  // Check if type is generator
  bool get isOutsourced => this == CheckingOutsourced.outsoruced;
}
