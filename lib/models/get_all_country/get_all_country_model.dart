import 'dart:convert';

GetCountryList getCountryListFromJson(String str) =>
    GetCountryList.fromJson(json.decode(str));

String getCountryListToJson(GetCountryList data) => json.encode(data.toJson());

class GetCountryList {
  GetCountryList({
    this.countries,
  });

  List<Country>? countries;

  factory GetCountryList.fromJson(Map<String, dynamic> json) => GetCountryList(
        countries: json['countries'] == null
            ? null
            : List<Country>.from(
                json['countries'].map((x) => Country.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'countries': countries == null
            ? null
            : List<dynamic>.from(countries!.map((x) => x.toJson())),
      };
}

class Country {
  Country({
    this.nameEn,
  });

  String? nameEn;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        nameEn: json['name_en'],
      );

  Map<String, dynamic> toJson() => {
        'name_en': nameEn,
      };
}
