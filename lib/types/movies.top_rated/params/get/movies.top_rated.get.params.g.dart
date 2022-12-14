// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.top_rated.get.params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopRatedMoviesGetParams _$$_TopRatedMoviesGetParamsFromJson(
        Map<String, dynamic> json) =>
    _$_TopRatedMoviesGetParams(
      language: json['language'] as String? ?? 'en-US',
      page: json['page'] as int? ?? 1,
      region: $enumDecodeNullable(_$MovieRegionEnumMap, json['region']) ??
          MovieRegion.US,
    );

Map<String, dynamic> _$$_TopRatedMoviesGetParamsToJson(
        _$_TopRatedMoviesGetParams instance) =>
    <String, dynamic>{
      'language': instance.language,
      'page': instance.page,
      'region': _$MovieRegionEnumMap[instance.region]!,
    };

const _$MovieRegionEnumMap = {
  MovieRegion.AF: 'AF',
  MovieRegion.AX: 'AX',
  MovieRegion.AL: 'AL',
  MovieRegion.DZ: 'DZ',
  MovieRegion.AS: 'AS',
  MovieRegion.AD: 'AD',
  MovieRegion.AO: 'AO',
  MovieRegion.AI: 'AI',
  MovieRegion.AQ: 'AQ',
  MovieRegion.AG: 'AG',
  MovieRegion.AR: 'AR',
  MovieRegion.AM: 'AM',
  MovieRegion.AW: 'AW',
  MovieRegion.AU: 'AU',
  MovieRegion.AT: 'AT',
  MovieRegion.AZ: 'AZ',
  MovieRegion.BS: 'BS',
  MovieRegion.BH: 'BH',
  MovieRegion.BD: 'BD',
  MovieRegion.BB: 'BB',
  MovieRegion.BY: 'BY',
  MovieRegion.BE: 'BE',
  MovieRegion.BZ: 'BZ',
  MovieRegion.BJ: 'BJ',
  MovieRegion.BM: 'BM',
  MovieRegion.BT: 'BT',
  MovieRegion.BO: 'BO',
  MovieRegion.BQ: 'BQ',
  MovieRegion.BA: 'BA',
  MovieRegion.BW: 'BW',
  MovieRegion.BV: 'BV',
  MovieRegion.BR: 'BR',
  MovieRegion.IO: 'IO',
  MovieRegion.BN: 'BN',
  MovieRegion.BG: 'BG',
  MovieRegion.BF: 'BF',
  MovieRegion.BI: 'BI',
  MovieRegion.CV: 'CV',
  MovieRegion.KH: 'KH',
  MovieRegion.CM: 'CM',
  MovieRegion.CA: 'CA',
  MovieRegion.KY: 'KY',
  MovieRegion.CF: 'CF',
  MovieRegion.TD: 'TD',
  MovieRegion.CL: 'CL',
  MovieRegion.CN: 'CN',
  MovieRegion.CX: 'CX',
  MovieRegion.CC: 'CC',
  MovieRegion.CO: 'CO',
  MovieRegion.KM: 'KM',
  MovieRegion.CG: 'CG',
  MovieRegion.CD: 'CD',
  MovieRegion.CK: 'CK',
  MovieRegion.CR: 'CR',
  MovieRegion.CI: 'CI',
  MovieRegion.HR: 'HR',
  MovieRegion.CU: 'CU',
  MovieRegion.CW: 'CW',
  MovieRegion.CY: 'CY',
  MovieRegion.CZ: 'CZ',
  MovieRegion.DK: 'DK',
  MovieRegion.DJ: 'DJ',
  MovieRegion.DM: 'DM',
  MovieRegion.DO: 'DO',
  MovieRegion.EC: 'EC',
  MovieRegion.EG: 'EG',
  MovieRegion.SV: 'SV',
  MovieRegion.GQ: 'GQ',
  MovieRegion.ER: 'ER',
  MovieRegion.EE: 'EE',
  MovieRegion.SZ: 'SZ',
  MovieRegion.ET: 'ET',
  MovieRegion.FK: 'FK',
  MovieRegion.FO: 'FO',
  MovieRegion.FJ: 'FJ',
  MovieRegion.FI: 'FI',
  MovieRegion.FR: 'FR',
  MovieRegion.GF: 'GF',
  MovieRegion.PF: 'PF',
  MovieRegion.TF: 'TF',
  MovieRegion.GA: 'GA',
  MovieRegion.GM: 'GM',
  MovieRegion.GE: 'GE',
  MovieRegion.DE: 'DE',
  MovieRegion.GH: 'GH',
  MovieRegion.GI: 'GI',
  MovieRegion.GR: 'GR',
  MovieRegion.GL: 'GL',
  MovieRegion.GD: 'GD',
  MovieRegion.GP: 'GP',
  MovieRegion.GU: 'GU',
  MovieRegion.GT: 'GT',
  MovieRegion.GG: 'GG',
  MovieRegion.GN: 'GN',
  MovieRegion.GW: 'GW',
  MovieRegion.GY: 'GY',
  MovieRegion.HT: 'HT',
  MovieRegion.HM: 'HM',
  MovieRegion.VA: 'VA',
  MovieRegion.HN: 'HN',
  MovieRegion.HK: 'HK',
  MovieRegion.HU: 'HU',
  MovieRegion.IS: 'IS',
  MovieRegion.IN: 'IN',
  MovieRegion.ID: 'ID',
  MovieRegion.IR: 'IR',
  MovieRegion.IQ: 'IQ',
  MovieRegion.IE: 'IE',
  MovieRegion.IM: 'IM',
  MovieRegion.IL: 'IL',
  MovieRegion.IT: 'IT',
  MovieRegion.JM: 'JM',
  MovieRegion.JP: 'JP',
  MovieRegion.JE: 'JE',
  MovieRegion.JO: 'JO',
  MovieRegion.KZ: 'KZ',
  MovieRegion.KE: 'KE',
  MovieRegion.KI: 'KI',
  MovieRegion.KP: 'KP',
  MovieRegion.KR: 'KR',
  MovieRegion.KW: 'KW',
  MovieRegion.KG: 'KG',
  MovieRegion.LA: 'LA',
  MovieRegion.LV: 'LV',
  MovieRegion.LB: 'LB',
  MovieRegion.LS: 'LS',
  MovieRegion.LR: 'LR',
  MovieRegion.LY: 'LY',
  MovieRegion.LI: 'LI',
  MovieRegion.LT: 'LT',
  MovieRegion.LU: 'LU',
  MovieRegion.MO: 'MO',
  MovieRegion.MG: 'MG',
  MovieRegion.MW: 'MW',
  MovieRegion.MY: 'MY',
  MovieRegion.MV: 'MV',
  MovieRegion.ML: 'ML',
  MovieRegion.MT: 'MT',
  MovieRegion.MH: 'MH',
  MovieRegion.MQ: 'MQ',
  MovieRegion.MR: 'MR',
  MovieRegion.MU: 'MU',
  MovieRegion.YT: 'YT',
  MovieRegion.MX: 'MX',
  MovieRegion.FM: 'FM',
  MovieRegion.MD: 'MD',
  MovieRegion.MC: 'MC',
  MovieRegion.MN: 'MN',
  MovieRegion.ME: 'ME',
  MovieRegion.MS: 'MS',
  MovieRegion.MA: 'MA',
  MovieRegion.MZ: 'MZ',
  MovieRegion.MM: 'MM',
  MovieRegion.NA: 'NA',
  MovieRegion.NR: 'NR',
  MovieRegion.NP: 'NP',
  MovieRegion.NL: 'NL',
  MovieRegion.NC: 'NC',
  MovieRegion.NZ: 'NZ',
  MovieRegion.NI: 'NI',
  MovieRegion.NE: 'NE',
  MovieRegion.NG: 'NG',
  MovieRegion.NU: 'NU',
  MovieRegion.NF: 'NF',
  MovieRegion.MK: 'MK',
  MovieRegion.MP: 'MP',
  MovieRegion.NO: 'NO',
  MovieRegion.OM: 'OM',
  MovieRegion.PK: 'PK',
  MovieRegion.PW: 'PW',
  MovieRegion.PS: 'PS',
  MovieRegion.PA: 'PA',
  MovieRegion.PG: 'PG',
  MovieRegion.PY: 'PY',
  MovieRegion.PE: 'PE',
  MovieRegion.PH: 'PH',
  MovieRegion.PN: 'PN',
  MovieRegion.PL: 'PL',
  MovieRegion.PT: 'PT',
  MovieRegion.PR: 'PR',
  MovieRegion.QA: 'QA',
  MovieRegion.RE: 'RE',
  MovieRegion.RO: 'RO',
  MovieRegion.RU: 'RU',
  MovieRegion.RW: 'RW',
  MovieRegion.BL: 'BL',
  MovieRegion.SH: 'SH',
  MovieRegion.KN: 'KN',
  MovieRegion.LC: 'LC',
  MovieRegion.MF: 'MF',
  MovieRegion.PM: 'PM',
  MovieRegion.VC: 'VC',
  MovieRegion.WS: 'WS',
  MovieRegion.SM: 'SM',
  MovieRegion.ST: 'ST',
  MovieRegion.SA: 'SA',
  MovieRegion.SN: 'SN',
  MovieRegion.RS: 'RS',
  MovieRegion.SC: 'SC',
  MovieRegion.SL: 'SL',
  MovieRegion.SG: 'SG',
  MovieRegion.SX: 'SX',
  MovieRegion.SK: 'SK',
  MovieRegion.SI: 'SI',
  MovieRegion.SB: 'SB',
  MovieRegion.SO: 'SO',
  MovieRegion.ZA: 'ZA',
  MovieRegion.GS: 'GS',
  MovieRegion.SS: 'SS',
  MovieRegion.ES: 'ES',
  MovieRegion.LK: 'LK',
  MovieRegion.SD: 'SD',
  MovieRegion.SR: 'SR',
  MovieRegion.SJ: 'SJ',
  MovieRegion.SE: 'SE',
  MovieRegion.CH: 'CH',
  MovieRegion.SY: 'SY',
  MovieRegion.TW: 'TW',
  MovieRegion.TJ: 'TJ',
  MovieRegion.TZ: 'TZ',
  MovieRegion.TH: 'TH',
  MovieRegion.TL: 'TL',
  MovieRegion.TG: 'TG',
  MovieRegion.TK: 'TK',
  MovieRegion.TO: 'TO',
  MovieRegion.TT: 'TT',
  MovieRegion.TN: 'TN',
  MovieRegion.TR: 'TR',
  MovieRegion.TM: 'TM',
  MovieRegion.TC: 'TC',
  MovieRegion.TV: 'TV',
  MovieRegion.UG: 'UG',
  MovieRegion.UA: 'UA',
  MovieRegion.AE: 'AE',
  MovieRegion.GB: 'GB',
  MovieRegion.US: 'US',
  MovieRegion.UM: 'UM',
  MovieRegion.UY: 'UY',
  MovieRegion.UZ: 'UZ',
  MovieRegion.VU: 'VU',
  MovieRegion.VE: 'VE',
  MovieRegion.VN: 'VN',
  MovieRegion.VG: 'VG',
  MovieRegion.VI: 'VI',
  MovieRegion.WF: 'WF',
  MovieRegion.EH: 'EH',
  MovieRegion.YE: 'YE',
  MovieRegion.ZM: 'ZM',
  MovieRegion.ZW: 'ZW',
};
