class Country {
  String id;
  String name;
  String capital;
  String flag;
  String language;
  String region;
  int population;

  Country.fromMap(Map<String, dynamic> map)
      : id = map["cca2"] ?? "",
        name = map["name"]?["common"] ?? "",
        capital = (map["capital"] as List<dynamic>).isNotEmpty
            ? map["capital"][0]
            : "",
        flag = map["flags"]?["png"] ?? "",
        language = (map["languages"] as Map<String, dynamic>)
                .values
                .toList()
                .isNotEmpty
            ? (map["languages"] as Map<String, dynamic>?)?.values.toList()[0]
            : "",
        region = map["region"] ?? "",
        population = map["population"] ?? 0;
}
