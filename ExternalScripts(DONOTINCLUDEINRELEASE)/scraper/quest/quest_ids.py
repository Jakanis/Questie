# https://www.wowhead.com/classic/quests?filter=8;2;11500
# r = []
# document.getElementsByClassName("listview-cleartext").forEach(l => r.push(parseInt(l.href.substr(38, 6)))); r; // run for each page
# [...new Set(r)].sort();
QUEST_IDS = [
    60863,
    60864,
    60865,
    60866,
    60868,
    63769,
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
    78680,
    78681,
    78684,
    78702,
    78872,
    78909,
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
    79482,
    79483,
    79484,
    79485,
    79486,
    79487,
    79492,
    79495,
    79588,
    79589,
    79590,
    79591,
    79592,
    79593,
    79594,
    79595
]
