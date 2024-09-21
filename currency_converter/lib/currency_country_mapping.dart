/// Note:
/// A mapping from ISO 4217 currency codes to ISO 3166-1 alpha-2 country codes.
/// - Some currencies are used by multiple countries. This mapping assigns a primary country.
/// - For currencies like EUR used by the European Union, 'EU' is used, which may not be recognized by the 'flag' package.
const Map<String, String> currencyToCountry = {
  'AED': 'AE', // United Arab Emirates Dirham - United Arab Emirates
  'AFN': 'AF', // Afghan Afghani - Afghanistan
  'ALL': 'AL', // Albanian Lek - Albania
  'AMD': 'AM', // Armenian Dram - Armenia
  'ANG': 'NL', // Netherlands Antillean Guilder - Netherlands
  'AOA': 'AO', // Angolan Kwanza - Angola
  'ARS': 'AR', // Argentine Peso - Argentina
  'AUD': 'AU', // Australian Dollar - Australia
  'AWG': 'AW', // Aruban Florin - Aruba
  'AZN': 'AZ', // Azerbaijani Manat - Azerbaijan
  'BAM': 'BA', // Bosnia-Herzegovina Convertible Mark - Bosnia and Herzegovina
  'BBD': 'BB', // Barbadian Dollar - Barbados
  'BDT': 'BD', // Bangladeshi Taka - Bangladesh
  'BGN': 'BG', // Bulgarian Lev - Bulgaria
  'BHD': 'BH', // Bahraini Dinar - Bahrain
  'BIF': 'BI', // Burundian Franc - Burundi
  'BMD': 'BM', // Bermudian Dollar - Bermuda
  'BND': 'BN', // Brunei Dollar - Brunei
  'BOB': 'BO', // Bolivian Boliviano - Bolivia
  'BRL': 'BR', // Brazilian Real - Brazil
  'BSD': 'BS', // Bahamian Dollar - Bahamas
  'BTN': 'BT', // Bhutanese Ngultrum - Bhutan
  'BWP': 'BW', // Botswanan Pula - Botswana
  'BYN': 'BY', // Belarusian Ruble - Belarus
  'BZD': 'BZ', // Belize Dollar - Belize
  'CAD': 'CA', // Canadian Dollar - Canada
  'CDF': 'CD', // Congolese Franc - Democratic Republic of the Congo
  'CHF': 'CH', // Swiss Franc - Switzerland
  'CLP': 'CL', // Chilean Peso - Chile
  'CNY': 'CN', // Chinese Yuan - China
  'COP': 'CO', // Colombian Peso - Colombia
  'CRC': 'CR', // Costa Rican Colón - Costa Rica
  'CUC': 'CU', // Cuban Convertible Peso - Cuba
  'CUP': 'CU', // Cuban Peso - Cuba
  'CVE': 'CV', // Cape Verdean Escudo - Cape Verde
  'CZK': 'CZ', // Czech Koruna - Czech Republic
  'DJF': 'DJ', // Djiboutian Franc - Djibouti
  'DKK': 'DK', // Danish Krone - Denmark
  'DOP': 'DO', // Dominican Peso - Dominican Republic
  'DZD': 'DZ', // Algerian Dinar - Algeria
  'EGP': 'EG', // Egyptian Pound - Egypt
  'ERN': 'ER', // Eritrean Nakfa - Eritrea
  'ETB': 'ET', // Ethiopian Birr - Ethiopia
  'EUR': 'EU', // Euro - European Union
  'FJD': 'FJ', // Fijian Dollar - Fiji
  'FKP': 'FK', // Falkland Islands Pound - Falkland Islands
  'FOK': 'FO', // Faroese Króna - Faroe Islands
  'GBP': 'GB', // British Pound Sterling - United Kingdom
  'GEL': 'GE', // Georgian Lari - Georgia
  'GGP': 'GG', // Guernsey Pound - Guernsey
  'GHS': 'GH', // Ghanaian Cedi - Ghana
  'GIP': 'GI', // Gibraltar Pound - Gibraltar
  'GMD': 'GM', // Gambian Dalasi - The Gambia
  'GNF': 'GN', // Guinean Franc - Guinea
  'GTQ': 'GT', // Guatemalan Quetzal - Guatemala
  'GYD': 'GY', // Guyanaese Dollar - Guyana
  'HKD': 'HK', // Hong Kong Dollar - Hong Kong
  'HNL': 'HN', // Honduran Lempira - Honduras
  'HRK': 'HR', // Croatian Kuna - Croatia
  'HTG': 'HT', // Haitian Gourde - Haiti
  'HUF': 'HU', // Hungarian Forint - Hungary
  'IDR': 'ID', // Indonesian Rupiah - Indonesia
  'ILS': 'IL', // Israeli New Shekel - Israel
  'IMP': 'IM', // Manx pound - Isle of Man
  'INR': 'IN', // Indian Rupee - India
  'IQD': 'IQ', // Iraqi Dinar - Iraq
  'IRR': 'IR', // Iranian Rial - Iran
  'ISK': 'IS', // Icelandic Króna - Iceland
  'JEP': 'JE', // Jersey Pound - Jersey
  'JMD': 'JM', // Jamaican Dollar - Jamaica
  'JOD': 'JO', // Jordanian Dinar - Jordan
  'JPY': 'JP', // Japanese Yen - Japan
  'KES': 'KE', // Kenyan Shilling - Kenya
  'KGS': 'KG', // Kyrgystani Som - Kyrgyzstan
  'KHR': 'KH', // Cambodian Riel - Cambodia
  'KMF': 'KM', // Comorian Franc - Comoros
  'KPW': 'KP', // North Korean Won - North Korea
  'KRW': 'KR', // South Korean Won - South Korea
  'KWD': 'KW', // Kuwaiti Dinar - Kuwait
  'KYD': 'KY', // Cayman Islands Dollar - Cayman Islands
  'KZT': 'KZ', // Kazakhstani Tenge - Kazakhstan
  'LAK': 'LA', // Laotian Kip - Laos
  'LBP': 'LB', // Lebanese Pound - Lebanon
  'LKR': 'LK', // Sri Lankan Rupee - Sri Lanka
  'LRD': 'LR', // Liberian Dollar - Liberia
  'LSL': 'LS', // Lesotho Loti - Lesotho
  'LYD': 'LY', // Libyan Dinar - Libya
  'MAD': 'MA', // Moroccan Dirham - Morocco
  'MDL': 'MD', // Moldovan Leu - Moldova
  'MGA': 'MG', // Malagasy Ariary - Madagascar
  'MKD': 'MK', // Macedonian Denar - North Macedonia
  'MMK': 'MM', // Myanma Kyat - Myanmar
  'MNT': 'MN', // Mongolian Tögrög - Mongolia
  'MOP': 'MO', // Macanese Pataca - Macau
  'MRU': 'MR', // Mauritanian Ouguiya - Mauritania
  'MUR': 'MU', // Mauritian Rupee - Mauritius
  'MVR': 'MV', // Maldivian Rufiyaa - Maldives
  'MWK': 'MW', // Malawian Kwacha - Malawi
  'MXN': 'MX', // Mexican Peso - Mexico
  'MYR': 'MY', // Malaysian Ringgit - Malaysia
  'MZN': 'MZ', // Mozambican Metical - Mozambique
  'NAD': 'NA', // Namibian Dollar - Namibia
  'NGN': 'NG', // Nigerian Naira - Nigeria
  'NIO': 'NI', // Nicaraguan Córdoba - Nicaragua
  'NOK': 'NO', // Norwegian Krone - Norway
  'NPR': 'NP', // Nepalese Rupee - Nepal
  'NZD': 'NZ', // New Zealand Dollar - New Zealand
  'OMR': 'OM', // Omani Rial - Oman
  'PAB': 'PA', // Panamanian Balboa - Panama
  'PEN': 'PE', // Peruvian Nuevo Sol - Peru
  'PGK': 'PG', // Papua New Guinean Kina - Papua New Guinea
  'PHP': 'PH', // Philippine Peso - Philippines
  'PKR': 'PK', // Pakistani Rupee - Pakistan
  'PLN': 'PL', // Polish Złoty - Poland
  'PYG': 'PY', // Paraguayan Guaraní - Paraguay
  'QAR': 'QA', // Qatari Riyal - Qatar
  'RON': 'RO', // Romanian Leu - Romania
  'RSD': 'RS', // Serbian Dinar - Serbia
  'RUB': 'RU', // Russian Ruble - Russia
  'RWF': 'RW', // Rwandan Franc - Rwanda
  'SAR': 'SA', // Saudi Riyal - Saudi Arabia
  'SBD': 'SB', // Solomon Islands Dollar - Solomon Islands
  'SCR': 'SC', // Seychellois Rupee - Seychelles
  'SDG': 'SD', // Sudanese Pound - Sudan
  'SEK': 'SE', // Swedish Krona - Sweden
  'SGD': 'SG', // Singapore Dollar - Singapore
  'SHP': 'SH', // Saint Helena Pound - Saint Helena
  'SLL': 'SL', // Sierra Leonean Leone - Sierra Leone
  'SOS': 'SO', // Somali Shilling - Somalia
  'SPL': 'SB', // Seborga Luigino - Seborga (Not an official ISO country)
  'SRD': 'SR', // Surinamese Dollar - Suriname
  'STN': 'ST', // São Tomé and Príncipe Dobra - São Tomé and Príncipe
  'SVC': 'SV', // Salvadoran Colón - El Salvador
  'SYP': 'SY', // Syrian Pound - Syria
  'SZL': 'SZ', // Swazi Lilangeni - Eswatini
  'THB': 'TH', // Thai Baht - Thailand
  'TJS': 'TJ', // Tajikistani Somoni - Tajikistan
  'TMT': 'TM', // Turkmenistani Manat - Turkmenistan
  'TND': 'TN', // Tunisian Dinar - Tunisia
  'TOP': 'TO', // Tongan Paʻanga - Tonga
  'TRY': 'TR', // Turkish Lira - Turkey
  'TTD': 'TT', // Trinidad and Tobago Dollar - Trinidad and Tobago
  'TWD': 'TW', // New Taiwan Dollar - Taiwan
  'TZS': 'TZ', // Tanzanian Shilling - Tanzania
  'UAH': 'UA', // Ukrainian Hryvnia - Ukraine
  'UGX': 'UG', // Ugandan Shilling - Uganda
  'USD': 'US', // United States Dollar - United States
  'UYU': 'UY', // Uruguayan Peso - Uruguay
  'UZS': 'UZ', // Uzbekistani Soʻm - Uzbekistan
  'VEF': 'VE', // Venezuelan Bolívar Fuerte - Venezuela
  'VND': 'VN', // Vietnamese Đồng - Vietnam
  'VUV': 'VU', // Vanuatu Vatu - Vanuatu
  'WST': 'WS', // Samoan Tala - Samoa
  'XAF':
      'CM', // Central African CFA Franc - Cameroon (Commonly used by multiple Central African countries)
  'XCD':
      'AG', // East Caribbean Dollar - Antigua and Barbuda (Used by multiple countries)
  'XDR': 'XX', // Special Drawing Rights - International
  'XOF':
      'CI', // West African CFA Franc - Côte d'Ivoire (Used by multiple West African countries)
  'XPF':
      'PF', // CFP Franc - French Polynesia (Used by multiple French territories)
  'YER': 'YE', // Yemeni Rial - Yemen
  'ZAR': 'ZA', // South African Rand - South Africa
  'ZMW': 'ZM', // Zambian Kwacha - Zambia
  'ZWL': 'ZW', // Zimbabwean Dollar - Zimbabwe
};
