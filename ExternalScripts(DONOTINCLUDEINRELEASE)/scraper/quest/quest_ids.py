# https://www.wowhead.com/classic/quests?filter=8;2;11500
# r = []
# document.getElementsByClassName("listview-cleartext").forEach(l => r.push(parseInt(l.href.substr(38, 6)))); r; // run for each page
# [...new Set(r)].sort();
QUEST_IDS = [
    76156,
    76160,
    76240,
    77568,
    77571,
    77573,
    77574,
    77575,
    77582,
    77583,
    77584,
    77585,
    77586,
    77587,
    77588,
    77590,
    77592,
    77616,
    77617,
    77618,
    77619,
    77620,
    77621,
    77642,
    77643,
    77648,
    77649,
    77651,
    77652,
    77655,
    77656,
    77657,
    77658,
    77659,
    77660,
    77661,
    77666,
    77667,
    77668,
    77669,
    77670,
    77671,
    77672,
    78088,
    78089,
    78090,
    78091,
    78092,
    78093,
    78114,
    78121,
    78124,
    78127,
    78132,
    78133,
    78134,
    78142,
    78143,
    78144,
    78145,
    78146,
    78147,
    78148,
    78149,
    78150,
    78192,
    78193,
    78194,
    78195,
    78196,
    78197,
    78198,
    78199,
    78229,
    78261,
    78265,
    78266,
    78267,
    78270,
    78277,
    78287,
    78288,
    78297,
    78304,
    78307,
    78506,
    78537,
    78561,
    78575,
    78611,
    78612,
    78676,
    78680,
    78681,
    78684,
    78699,
    78702,
    78823,
    78830,
    78872,
    78909,
    78914,
    78916,
    78917,
    78920,
    78921,
    78922,
    78923,
    78925,
    78926,
    78927,
    78994,
    79007,
    79008,
    79077,
    79078,
    79079,
    79080,
    79090,
    79091,
    79092,
    79093,
    79094,
    79095,
    79096,
    79097,
    79098,
    79099,
    79100,
    79101,
    79102,
    79103,
    79192,
    79229,
    79235,
    79236,
    79242,
    79298,
    79348,
    79358,
    79360,
    79361,
    79362,
    79363,
    79364,
    79365,
    79366,
    79377,
    79442,
    79482,
    79483,
    79484,
    79485,
    79486,
    79487,
    79492,
    79495,
    79535,
    79536,
    79588,
    79589,
    79590,
    79591,
    79592,
    79593,
    79594,
    79595,
    79624,
    79626,
    79677,
    79678,
    79704,
    79705,
    79731,
    79905,
    79939,
    79940,
    79945,
    79946,
    79947,
    79948,
    79949,
    79950,
    79951,
    79952,
    79953,
    79963,
    79970,
    79974,
    79975,
    79976,
    79980,
    79981,
    79982,
    79984,
    79985,
    79986,
    79987,
    79990,
    79991,
    80001,
    80098,
    80120,
    80131,
    80132,
    80133,
    80134,
    80135,
    80136,
    80137,
    80138,
    80139,
    80140,
    80141,
    80143,
    80147,
    80148,
    80149,
    80150,
    80151,
    80152,
    80153,
    80155,
    80157,
    80158,
    80160,
    80161,
    80169,
    80180,
    80181,
    80182,
    80241,
    80307,
    80308,
    80309,
    80324,
    80325,
    81570,
]
