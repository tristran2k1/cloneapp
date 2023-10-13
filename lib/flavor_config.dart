enum Flavor { dev, stag, prod }

class FlavorValues {
  late String content;

  factory FlavorValues(Flavor flavor) {
    return FlavorValues.fromJson(env[flavor]!);
  }

  FlavorValues.fromJson(Map<String, dynamic> json) {
    content = json['log_in_text'];
  }
}

class FlavorConfig {
  final Flavor flavor;
  final FlavorValues values;
  static FlavorConfig? instance;

  factory FlavorConfig({required Flavor flavor}) {
    instance ??= FlavorConfig._internal(flavor, FlavorValues(flavor));
    return instance!;
  }

  FlavorConfig._internal(this.flavor, this.values);
}

Map<Flavor, Map<String, dynamic>> env = {
  Flavor.dev: <String, dynamic>{
    'log_in_text': 'Login Dev',
  },
  Flavor.prod: <String, dynamic>{
    'log_in_text': 'Login',
  },
};
