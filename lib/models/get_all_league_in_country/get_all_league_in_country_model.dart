import 'dart:convert';

GetLeagueInCountry getLeagueInCountryFromJson(String str) =>
    GetLeagueInCountry.fromJson(json.decode(str));

String getLeagueInCountryToJson(GetLeagueInCountry data) =>
    json.encode(data.toJson());

class GetLeagueInCountry {
  GetLeagueInCountry({
    this.countries,
  });

  List<Map<String, String>>? countries;

  factory GetLeagueInCountry.fromJson(Map<String, dynamic> json) =>
      GetLeagueInCountry(
        countries: json['countries'] == null
            ? null
            : List<Map<String, String>>.from(json['countries'].map((x) =>
                Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
      );

  Map<String, dynamic> toJson() => {
        'countries': countries == null
            ? null
            : List<dynamic>.from(countries!.map((x) =>
                Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      };
}
