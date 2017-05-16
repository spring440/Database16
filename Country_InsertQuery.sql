USE [s17guest16]
GO

INSERT INTO [dbo].[Countries]
           ([countryName]
           ,[abreviation]
		   ,[countryID])
     VALUES
           ('Afghnistan' , 'AF',004),
('Aland Islands' , 'AX',248),
('Albania' , 'AL',008),
('Algeria' , 'DZ',012),
('American Samoa' , 'AS',016),
('Andorra' , 'AD',020),
('Angola' , 'AO',024),
('Anguilla' , 'AI',660),
('Antarctica' , 'AQ',010),
('Antigua and Barbuda' , 'AG',028),
('Argentina' , 'AR',032),
('Armenia' , 'AM',051),
('Aruba' , 'AW',533),
('Australia' , 'AU',036),
('Austria' , 'AT',040),
('Azerbaijan' , 'AZ',031),
('Bahamas' , 'BS',044),
('Bahrain' , 'BH',048),
('Bangladesh' , 'BD',050),
('Barbados' , 'BB',052),
('Belarus' , 'BY',112),
('Belgium' , 'BE',056),
('Belize' , 'BZ',084),
('Benin' , 'BJ',204),
('Bermuda' , 'BM',060),
('Bhutan' , 'BT',064),
('Bolivia' , 'BO',068),
('Bosnia and Herzegovina' , 'BA',070),
('Botswana' , 'BW',072),
('Bouvet Island' , 'BV',074),
('Brazil' , 'BR',076),
('British Virgin Islands' , 'VG',092),
('British Indian Ocean Territory' , 'IO',086),
('Brunei Darussalam' , 'BN',096),
('Bulgaria' , 'BG',100),
('Burkina Faso' , 'BF',854),
('Burundi' , 'BI',108),
('Cambodia' , 'KH',116),
('Cameroon' , 'CM',120),
('Canada' , 'CA',124),
('Cape Verde' , 'CV',132),
('Cayman Islands' , 'KY',136),
('Central African Republic' , 'CF',140),
('Chad' , 'TD',148),
('Chile' , 'CL',152),
('China' , 'CN',156),
('Hong Kong, SAR China' , 'HK',344),
('Macao, SAR China' , 'MO',446),
('Christmas Island' , 'CX',162),
('Cocos (Keeling) Islands' , 'CC',166),
('Colombia' , 'CO',170),
('Comoros' , 'KM',174),
('Congo�(Brazzaville)' , 'CG',178),
('Congo, (Kinshasa)' , 'CD',180),
('Cook Islands' , 'CK',184),
('Costa Rica' , 'CR',188),
('C�te d''Ivoire' , 'CI',384),
('Croatia' , 'HR',191),
('Cuba' , 'CU',192),
('Cyprus' , 'CY',196),
('Czech Republic' , 'CZ',203),
('Denmark' , 'DK',208),
('Djibouti' , 'DJ',262),
('Dominica' , 'DM',212),
('Dominican Republic' , 'DO',214),
('Ecuador' , 'EC',218),
('Egypt' , 'EG',818),
('El Salvador' , 'SV',222),
('Equatorial Guinea' , 'GQ',226),
('Eritrea' , 'ER',232),
('Estonia' , 'EE',233),
('Ethiopia' , 'ET',231),
('Falkland Islands (Malvinas)' , 'FK',238),
('Faroe Islands' , 'FO',234),
('Fiji' , 'FJ',242),
('Finland' , 'FI',246),
('France' , 'FR',250),
('French Guiana' , 'GF',254),
('French Polynesia' , 'PF',258),
('French Southern Territories' , 'TF',260),
('Gabon' , 'GA',266),
('Gambia' , 'GM',270),
('Georgia' , 'GE',268),
('Germany' , 'DE',276),
('Ghana' , 'GH',288),
('Gibraltar' , 'GI',292),
('Greece' , 'GR',300),
('Greenland' , 'GL',304),
('Grenada' , 'GD',308),
('Guadeloupe' , 'GP',312),
('Guam' , 'GU',316),
('Guatemala' , 'GT',320),
('Guernsey' , 'GG',831),
('Guinea' , 'GN',324),
('Guinea-Bissau' , 'GW',624),
('Guyana' , 'GY',328),
('Haiti' , 'HT',332),
('Heard and Mcdonald Islands' , 'HM',334),
('Holy See�(Vatican City State)' , 'VA',336),
('Honduras' , 'HN',340),
('Hungary' , 'HU',348),
('Iceland' , 'IS',352),
('India' , 'IN',356),
('Indonesia' , 'ID',360),
('Iran, Islamic Republic of' , 'IR',364),
('Iraq' , 'IQ',368),
('Ireland' , 'IE',372),
('Isle of Man' , 'IM',833),
('Israel' , 'IL',376),
('Italy' , 'IT',380),
('Jamaica' , 'JM',388),
('Japan' , 'JP',392),
('Jersey' , 'JE',832),
('Jordan' , 'JO',400),
('Kazakhstan' , 'KZ',398),
('Kenya' , 'KE',404),
('Kiribati' , 'KI',296),
('Korea�(North)' , 'KP',408),
('Korea�(South)' , 'KR',410),
('Kuwait' , 'KW',414),
('Kyrgyzstan' , 'KG',417),
('Lao PDR' , 'LA',418),
('Latvia' , 'LV',428),
('Lebanon' , 'LB',422),
('Lesotho' , 'LS',426),
('Liberia' , 'LR',430),
('Libya' , 'LY',434),
('Liechtenstein' , 'LI',438),
('Lithuania' , 'LT',440),
('Luxembourg' , 'LU',442),
('Macedonia, Republic of' , 'MK',807),
('Madagascar' , 'MG',450),
('Malawi' , 'MW',454),
('Malaysia' , 'MY',458),
('Maldives' , 'MV',462),
('Mali' , 'ML',466),
('Malta' , 'MT',470),
('Marshall Islands' , 'MH',584),
('Martinique' , 'MQ',474),
('Mauritania' , 'MR',478),
('Mauritius' , 'MU',480),
('Mayotte' , 'YT',175),
('Mexico' , 'MX',484),
('Micronesia, Federated States of' , 'FM',583),
('Moldova' , 'MD',498),
('Monaco' , 'MC',492),
('Mongolia' , 'MN',496),
('Montenegro' , 'ME',499),
('Montserrat' , 'MS',500),
('Morocco' , 'MA',504),
('Mozambique' , 'MZ',508),
('Myanmar' , 'MM',104),
('Namibia' , 'NA',516),
('Nauru' , 'NR',520),
('Nepal' , 'NP',524),
('Netherlands' , 'NL',528),
('Netherlands Antilles' , 'AN',530),
('New Caledonia' , 'NC',540),
('New Zealand' , 'NZ',554),
('Nicaragua' , 'NI',558),
('Niger' , 'NE',562),
('Nigeria' , 'NG',566),
('Niue' , 'NU',570),
('Norfolk Island' , 'NF',574),
('Northern Mariana Islands' , 'MP',580),
('Norway' , 'NO',578),
('Oman' , 'OM',512),
('Pakistan' , 'PK',586),
('Palau' , 'PW',585),
('Palestinian Territory' , 'PS',275),
('Panama' , 'PA',591),
('Papua New Guinea' , 'PG',598),
('Paraguay' , 'PY',600),
('Peru' , 'PE',604),
('Philippines' , 'PH',608),
('Pitcairn' , 'PN',612),
('Poland' , 'PL',616),
('Portugal' , 'PT',620),
('Puerto Rico' , 'PR',630),
('Qatar' , 'QA',634),
('R�union' , 'RE',638),
('Romania' , 'RO',642),
('Russian Federation' , 'RU',643),
('Rwanda' , 'RW',646),
('Saint-Barth�lemy' , 'BL',652),
('Saint Helena' , 'SH',654),
('Saint Kitts and Nevis' , 'KN',659),
('Saint Lucia' , 'LC',662),
('Saint-Martin (French part)' , 'MF',663),
('Saint Pierre and Miquelon' , 'PM',666),
('Saint Vincent and Grenadines' , 'VC',670),
('Samoa' , 'WS',882),
('San Marino' , 'SM',674),
('Sao Tome and Principe' , 'ST',678),
('Saudi Arabia' , 'SA',682),
('Senegal' , 'SN',686),
('Serbia' , 'RS',688),
('Seychelles' , 'SC',690),
('Sierra Leone' , 'SL',694),
('Singapore' , 'SG',702),
('Slovakia' , 'SK',703),
('Slovenia' , 'SI',705),
('Solomon Islands' , 'SB',090),
('Somalia' , 'SO',706),
('South Africa' , 'ZA',710),
('South Georgia and the South Sandwich Islands' , 'GS',239),
('South Sudan' , 'SS',728),
('Spain' , 'ES',724),
('Sri Lanka' , 'LK',144),
('Sudan' , 'SD',736),
('Suriname' , 'SR',740),
('Svalbard and Jan Mayen Islands' , 'SJ',744),
('Swaziland' , 'SZ',748),
('Sweden' , 'SE',752),
('Switzerland' , 'CH',756),
('Syrian Arab Republic�(Syria)' , 'SY',760),
('Taiwan, Republic of China' , 'TW',158),
('Tajikistan' , 'TJ',762),
('Tanzania, United Republic of' , 'TZ',834),
('Thailand' , 'TH',764),
('Timor-Leste' , 'TL',626),
('Togo' , 'TG',768),
('Tokelau' , 'TK',772),
('Tonga' , 'TO',776),
('Trinidad and Tobago' , 'TT',780),
('Tunisia' , 'TN',788),
('Turkey' , 'TR',792),
('Turkmenistan' , 'TM',795),
('Turks and Caicos Islands' , 'TC',796),
('Tuvalu' , 'TV',798),
('Uganda' , 'UG',800),
('Ukraine' , 'UA',804),
('United Arab Emirates' , 'AE',784),
('United Kingdom' , 'GB',826),
('United States of America' , 'US',840),
('US Minor Outlying Islands' , 'UM',581),
('Uruguay' , 'UY',858),
('Uzbekistan' , 'UZ',860),
('Vanuatu' , 'VU',548),
('Venezuela�(Bolivarian Republic)' , 'VE',862),
('Viet Nam' , 'VN',704),
('Virgin Islands, US' , 'VI',850),
('Wallis and Futuna Islands' , 'WF',876),
('Western Sahara' , 'EH',732),
('Yemen' , 'YE',887),
('Zambia' , 'ZM',894),
('Zimbabwe' , 'ZW',716)
GO

