class ExchangeRateDto {
  String? result;
  String? provider;
  String? documentation;
  String? termsOfUse;
  num? timeLastUpdateUnix;
  String? timeLastUpdateUtc;
  num? timeNextUpdateUnix;
  String? timeNextUpdateUtc;
  num? timeEolUnix;
  String? baseCode;
  Map<String, dynamic>? rates;
  num? conversionRate;

  ExchangeRateDto({
    this.result,
    this.provider,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.timeEolUnix,
    this.baseCode,
    this.conversionRate,
  });

  ExchangeRateDto.fromJson(dynamic json) {
    result = json['result'];
    provider = json['provider'];
    documentation = json['documentation'];
    termsOfUse = json['terms_of_use'];
    timeLastUpdateUnix = json['time_last_update_unix'];
    timeLastUpdateUtc = json['time_last_update_utc'];
    timeNextUpdateUnix = json['time_next_update_unix'];
    timeNextUpdateUtc = json['time_next_update_utc'];
    timeEolUnix = json['time_eol_unix'];
    baseCode = json['base_code'];
    rates = json['rates'];
    conversionRate = json['conversion_rate'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = result;
    map['provider'] = provider;
    map['documentation'] = documentation;
    map['terms_of_use'] = termsOfUse;
    map['time_last_update_unix'] = timeLastUpdateUnix;
    map['time_last_update_utc'] = timeLastUpdateUtc;
    map['time_next_update_unix'] = timeNextUpdateUnix;
    map['time_next_update_utc'] = timeNextUpdateUtc;
    map['time_eol_unix'] = timeEolUnix;
    map['base_code'] = baseCode;
    map['rates'] = rates;
    map['conversion_rate'] = conversionRate;
    return map;
  }
}
