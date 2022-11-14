import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kPrimaryColor = Color(0xFFEC1B0A);
const kSecondaryColor = Color(0xFFFE9901);
const kContentColorLightTheme = Color(0xFF000000);
const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);
const kButtonTextColor = Color(0xFF06E96D);
const kProfileTextColor = Color(0xFF04D162);
const kEditButtonColor = Color(0xFF252525);

const kWhiteColor = Color(0xFFFFFFFF);
const kWhiteFontColor = Color(0xFFFFFFFF);
const kBlackFontColor = Color(0xFF000000);

final kLogoStyle = GoogleFonts.poppins(
    color: kWhiteColor, fontSize: 65.sp, fontWeight: FontWeight.w600);

final kHeadingStyle1 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 28.sp, fontWeight: FontWeight.w700);
final kHeadingStyle1a = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 24.sp, fontWeight: FontWeight.w400);
final kHeadingStyle2 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 30.sp, fontWeight: FontWeight.w500);
final kHeadingStyle3 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 24.sp, fontWeight: FontWeight.w600);
final kHeadingStyle3b = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 24.sp, fontWeight: FontWeight.w600);
final kHeadingStyle4 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 20.sp, fontWeight: FontWeight.w600);
final kHeadingStyle5 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 20.sp, fontWeight: FontWeight.w600);
final kHeadingStyle6 = GoogleFonts.poppins(
    color: const Color(0xFF5C5C5C),
    fontSize: 20.sp,
    fontWeight: FontWeight.w500);
final kHeadingStyle7 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 18.sp, fontWeight: FontWeight.w600);

final kBodyStyle1 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 16.sp, fontWeight: FontWeight.w500);
final kBodyStyle1a = GoogleFonts.poppins(
    color: const Color(0xFF828282),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle2 = GoogleFonts.poppins(
    color: const Color(0xFF232323),
    fontSize: 15.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle2a = GoogleFonts.poppins(
    color: const Color(0xFF232323),
    fontSize: 15.sp,
    fontWeight: FontWeight.w600);
final kBodyStyle3 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 18.sp, fontWeight: FontWeight.w500);
final kBodyStyle4 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 16.sp, fontWeight: FontWeight.w600);
final kBodyStyle4b = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 16.sp, fontWeight: FontWeight.w600);
final kBodyStyle5 = GoogleFonts.poppins(
    color: const Color(0xFF9B9B9B),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle6 = GoogleFonts.poppins(
    color: const Color(0xFF8E8E8E),
    fontSize: 12.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle6a = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 12.sp, fontWeight: FontWeight.w500);
final kBodyStyle7 = GoogleFonts.poppins(
    color: const Color(0xFF2E2E2E),
    fontSize: 12.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle9 = GoogleFonts.poppins(
    color: const Color(0xFF424242),
    fontSize: 15.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle8 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 11.sp, fontWeight: FontWeight.w500);
final kBodyStyle10 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 9.sp, fontWeight: FontWeight.w600);
final kBodyStyle11 = GoogleFonts.poppins(
    color: kWhiteColor, fontSize: 14.sp, fontWeight: FontWeight.w400);
final kBodyStyle11a = GoogleFonts.poppins(
    color: kWhiteColor.withOpacity(0.7),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400);
final kBodyStyle12 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 12.sp, fontWeight: FontWeight.w600);
final kBodyStyle13 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 12.sp, fontWeight: FontWeight.w400);
final kBodyStyle14 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 14.sp, fontWeight: FontWeight.w500);
final kBodyStyle14b = GoogleFonts.poppins(
    color: const Color(0xFF939393),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle15 = GoogleFonts.poppins(
    color: const Color(0xFF6C6C6C),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500);
final kBodyStyle16 = GoogleFonts.poppins(
    color: kBlackFontColor, fontSize: 12.sp, fontWeight: FontWeight.w600);
final kBodyStyle17 = GoogleFonts.poppins(
    color: const Color(0xFF6A6A6A),
    fontSize: 10.sp,
    fontWeight: FontWeight.w600);
final kBodyStyle17b = GoogleFonts.poppins(
    color: kWhiteColor, fontSize: 10.sp, fontWeight: FontWeight.w600);

final kBodyStyle44 = GoogleFonts.poppins(
    color: kWhiteFontColor, fontSize: 2.sp, fontWeight: FontWeight.w600);

final kDefaultPadding = 20.0.h;

const String productImgUrl='https://s3-alpha-sig.figma.com/img/0ebb/5100/2009312ccbe96cf380bc1cdb8d3912d5?Expires=1667779200&Signature=M-xwq~L6tRg2ntnctfqfrpNAOExauK91CGkLKKpjtGF3yUn~sY4B1TqkMBRslTwt3It2qebli1rvBG0SeT~a7Ts9EIH5~z1quYT5jrmtB6e90SmNGZxfh0A1~TzwDGjFIO-IDY~XmijDgrweCIdOSVCh8vMA8mwjAgo8OEIcNdqn8vcKOf7JUFYC9hwaqKr4XnlQvSEVmaiyD~BIU6eyx2Tc7fRDGQnKFr7-bsStT9f6aQ4R1LawYLYLXKyXvnbacAZwdVI96xba~K355LVd62TwT8BCmRn8coFhuXPJvDUDNmpbdegFBSQmK8jCU76TvSDsGS~fmngHsy-TJ9r8MQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
const String productImgUrl2='https://s3-alpha-sig.figma.com/img/f1d3/9861/6a36a866bde477d5ec05df8bdbf23911?Expires=1667779200&Signature=fV3Zpqdxg7aGXYWzzKPYVk3z-H~pctR30Js4eeowSZJQ2ewh3tneN2DigK5W3ks4kN9uPHOXQI0TAltY0bYSjYgOFpHKty72yD1wxf5E79O~pItp8Bzu-rGyUNMzftzssB1v3JgwCWFhpkSFZd6KcAekfJzXUcW2hDZl6eY0tBal3Wy5~rewQ0dyBQBCzqVybBCWA2iNIq-RzUObZEyYu8Dpof4lbkrxHf6xu9MgTiz8rwEjwHwnaU2R-gqLpN37gOi-lYj8gpnzeBqzrCfT6bokR1O-EzS0b7Aj-15qNYMnOs2GQDGjv9xWj2um4FwD8wkuZdFWdf9IkEi5XpJf~w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
const String productImgUrl3='https://s3-alpha-sig.figma.com/img/7904/a9ff/3eba9e8ba746d383f791defc6ee6baf7?Expires=1667779200&Signature=C0kUlbXm7ogJTRr8BjemagyDbsiG6biHEL0IZoeQFlAV-3vBvwU7UDFDIGAlzL02fk6HLXYyfLmSMOKItCFxyaR8PzddbFqLS9GCrKKr~Tv5pUzVi4rV4oU6rOquXEsy5h-asxpXkA3~iJ8Bt5DG1dvGo-5cEUFBGDrIUUBHQksClSB6E4sQ5j88Od7TVo2Ju8gHR5x3u7HXntvAzgPG-Qe5X7Jkn3J8Mk~LVlEaj0gk4Fy8A8U04J9ksjIB5BZ2xqgRqZ~PE3pn3aTotT6LGT5WK~cy0lFzUjZ99Ju0GfL4AI40IXTAyg3kUjZfjNYIITQ7gnWw-W9oMO4pOnmSdQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
const String cartImgUrl='https://s3-alpha-sig.figma.com/img/700e/c7b7/3fabce9ed70c7082274a5def1d3aad9f?Expires=1668988800&Signature=MFI6bJf2osVy8oAtZ3Fk5hVaLikafHD4dgqKl2cZ2dedlkwaKY0jjeUvTK7fEVGkjYsjU3LTWsgO2Vl65s3LHLtqOGIH~pEql2tyBGl0ou-fomZCELftTdMQnZRwE21qoUSZsF5ULIQDgdB0hnapBl8g3TDDbZUapDQWIl~mtkp~z0QMhB-4k08S-S5rzGb5PfzwLjozoTnN~gShiBybOnB0j1eKgIczfdE8-9Ahgd1riVgh1zrnGtTCciVvOWqklv4y9TK4fk-UBytE0hA6YEMWlCEyG8uXZaf~VyOnsAo-MobR5N48cC9XoLOoe8lTnwTtr2BSYRtH67DLG9WrCA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
List<Map<String, dynamic>> categoriesList = [
  {
    'title': 'Television',
    'img':
        'https://s3-alpha-sig.figma.com/img/432f/10bd/f49946f41e22a01e7dcfa9011382bc56?Expires=1667779200&Signature=AGHFjlcoZYNFd9EQ1U~Q6cIDj8Yv8Vnq93Q788yOMaApIectA6KXct6AKy-wdFhCxp2qMihD8IdltRJkovNfrj7XLBZTIJVLHIXKZrM4di8Wi9sOOWokuWTIiWh053Jf6JAJumNHXE6Hswwn0flqFOaiRqURL2OG-CXpI4EhVA3JpKoji1Ij61jF34ISai1y9S6D9Ad6lnrZMh6rhd0dW6Vyijb4r4U8RVd~I1veSr6Ksxp1PmcQn7FLCXSZui7DfCKpKQ23O~YApJqNKpch4p-m~Eh~yPuyPin6hjVXpPpEHkmjpxsfjxHYCcvzR4ZAz8n06HE2XqUi2eTpTvGY4g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Mobiles',
    'img':
    'https://s3-alpha-sig.figma.com/img/0640/e5db/3b47afbfba870f36cfb99e4aeb263427?Expires=1667779200&Signature=FS~yiTxvrRNConA-oH0-OaSK6H6gXJdZvKDVy2Meu5wZ5nzaTHb~Gdz47tep~cjxTw5G8LIr5q63XXSM~z8ZFvZVDTquJk0rMG6zYs2G2xfYgS-POfry7u-8PiYsF-00NP~vxqC33TOykSEifM2raGwuwvkVzYbXgVt3Z34c8y3jiQQhwQ6wO5H0AGjvwgLeraCCRu7DpInpv5dk00D~-WlNg8F8L52oWjxbCm941qX4hdOgrmOaF3nNeTinR2KTD6oNbf3NOFXCD2asWVBgtZX1YX-CtR1SXjqg~wQSFnrP1KIrmQU5wkbg4W1nKCndsGQYp222rAuhHBoMs8VlWg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Laptop',
    'img':
    'https://s3-alpha-sig.figma.com/img/7498/3b31/3265ed8a6e5a007d889d26e826188dbc?Expires=1667779200&Signature=QMZmjXtgN1Dz4lGplyzd-8lkOkOpb5Xw6pcikIrAt1lrqwZ1xcBAZWLMuSFnK52HXt1kDDvitK2cbaD-2ABTLFj~3iuSQWssOmgNp3DGW2sZCU3aFvAzAg--sTdAdNVmRlZlXBSa~DZkCMeC7Jd~Hb6Nh5mxc6fxab7jNENX5RuCAKIWkkrOKzAlLwegGmTXKJdcAtOOuhnIG4CDvFTdh4Rw1VThgA7etvFVRIQhewVfVdUjZchdxr0MFQhrLKhoz4t8IwY2FageXID4hTiIdaEjPs9MwrycIGgOevC3r7w3MsIlHfRaU8hmRwmG-Mb0hUPPFW64YRCzp-AVGdEN~A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Headphones',
    'img':
    'https://s3-alpha-sig.figma.com/img/f25a/9568/377c6fdc28b8e26a96fcff028694bf26?Expires=1667779200&Signature=V8HKM05ltwfF0LJ6hAetzSJGdvvr2zGqctqnAJbS~SPou2j3oxQp0zRbkHFOOfi35ZtsmMzTYxtH1cGs0ElDMojiWxBtXkIU42UmP-kcr7zDOyUGVh2qP1GXAdSF16JNVcYXm-IqPEFxrMZYRT2oiRTYa11XbSIbKZvOEuGK0kj8m3TM1zvbcu5oIqUnTCfFj~xOJYocjcDpnRAMBaB0HlNcr4pkpjiQf6t65U~kvh7ZSZADEhUYF~j1J-IFQvN-iFfzesBCvMT3WQe4EZhMQZy2Dfnb6PtjXngMpSa41C3qi5U43zfeWS1wZBz9c81LiYuW2g3AHpRSZNn39tfL1A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Tablets',
    'img':
    'https://s3-alpha-sig.figma.com/img/1d58/0ea4/c4b15c0c26ee2e1a3d80bb7bfc8d00ca?Expires=1667779200&Signature=TZynSnl7vHeze8tdvgUi7nTIWYEvCXLOd5UCT7QlLILvzHli6ooGcVeSSGeWYLSEICjzFmEg5tv2ahrITuxKM-3QCLE4zxR7Vh2KBE4~jiGRxG6TLQMh3PwujRZbakmNX4yEeaVzSeM8vA6pshrj-21pQyTDT4L6M494yakbX0SIsieoEIha8JoSH9BlKoiDFbfxGBle-5rsJ6zuOlyFX8MMiOMRewJl9Rp3Zaa4YRsBCoOPPzMSZZQAKnAczgVDii-VTAqnro9u68LMcpZMavrZpa8bNKq3N2YldlTAOf1nQvWfE-F7FdM7XhthctccxcWJm8eJGRtx49oRm7KCiw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Watches',
    'img':
    'https://s3-alpha-sig.figma.com/img/1735/bd9c/efc36b3a0ff54bf6b033cc88d48f6cfc?Expires=1667779200&Signature=ahg0DbKq2z-R9-PZBmmw9IUSf2d7ArVisw5JpfAnEIimHG~9jvA-hiLuJs1HfHDuyEQ4od00EM0gtTgVuiftKBKaloeoxofoAbjLz3Xguy4SXb7jq7HL9NR7fQyaxjhFLl~YP9is5JIsHsOd28CY4vi8mOsv9aVKZF6EUpqu-oroWmcBo44q-EI~IwYrdY6FLatk4C4DWkxc4ehc9lAxA41P88gXSwmWIQbvESAJjvPOQ9d-KfoFn-gJtSkkZbBfL6bxUKrDr834yWlfU52SpKZeGeh436XUEMN9Wre5jLiFOwlm~cnSWQmhaVdlL-Xws1gGWDtE-lp1k8q7yFjV~A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Fragrances',
    'img':
    'https://s3-alpha-sig.figma.com/img/fa3b/bbdb/c6ffd44b6cd78378514f3b3a622aa49b?Expires=1667779200&Signature=LNJcZTX35zo31ITZftrn5zlDj7MSOZ4zwunQBYLbH0zZMMZP3YpDL-9uPNwacgRLF0NsjAQ8xtv3z9I1cySsElXhB1bztOiox-yHFHMfnPSKtN8GFM5aWElKQgBQT8yXLCvzynSJhK01VjMPtqVIDW~iVBhzZj2CPRt21FdSf7GqWTRo20pT0MeU5JGisy1IoehDcL06GSJfU2TTaQsywUvVwWj1fpBPQEB39A1aLjYGgqDB9Pc023aKxUJhP-0SU97B0tp1UvWOQh7IF2A~C8tPPGfWVThl1976FZLrlQrKrL~VKgBrWB3qwqnP1erA0if76YVUQg2RDs~3pNCbAg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Tools',
    'img':
    'https://s3-alpha-sig.figma.com/img/e560/4856/f7b4f2fddc3acd27d0beeddad077ff68?Expires=1667779200&Signature=Si12Dmieod0ZAhs07iS3KB8PgLWXwRJWH1fbx6ob8SyKo31s~WZFO7quUk-LPMeIYA0sG-NWVSFpEYqi0vZcfCBYutznDsLRgbJXw-zgDxQgfK5haTwMcKXOJRrkjavMTFMlrrbIbJIYi5DvkksQVuTNcR3kOcxCbP1brmtLuaIyCIy1OlZG3T~y3y7MdEXZ7eYnegjiKnt~xzYRsCPZ~wY0YyNT0sPVO22BD0NZxbm8aVuRYRuGMOJGXhcUcek6Y5pDU6KHbJM3ysI1Ha6gk9nxHwsgYbDe9uMe9Tc1LZYpyExqPwK7ihShbiQrlt7n3N3dUw34ed~VIn3FLiys6g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Fashion',
    'img':
    'https://s3-alpha-sig.figma.com/img/56dd/ebbe/942f67ed3453ec8a40a411678725b1c7?Expires=1667779200&Signature=E2hKDnSB3orIw613u85KWT~ccFi-FSeumNs0oViXe6iSSeNOG97e~PvMDEKEpsd5Pdrupp5cvAvde4B8UG8Z3V7fLsQdu3c1IfmulgiWShXwK60j9O3mrJ1-j3LtwlM-LlrPEgmF3yYI~CrV7QtoqZgaM3Ri9qI0xweal3Zdd8O04OLnYZ32FyJtCzSCAms5u3fIEDTu4ksUm4vso1IqLerdmqYkQgX5xPVdPEOSo~MoWl8JxeUUbGfBc8-qrE-Eok6~NRuaOL7v-briE7dGaydPBL67CxLOk6CTVCVh8wXIacfDm3czSMEAsmaf8R3o04BXD9GdUilNfV-OjbMGJA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
  {
    'title': 'Appliances',
    'img':
    'https://s3-alpha-sig.figma.com/img/77e2/297b/742e96aed702633c01f836b91149f14b?Expires=1667779200&Signature=dEL-979kOpHdtIfLDirAwUGi1TkVgKR11dCOH6kZjhw9uQ3Byf96IFFW32uZAVxfeg34Nu8U9FJukMZ28Ekd6lNtev6SkAglw7fLES9AAYOdEKy66F-zKwstjctLf9SRdjDX9w9JCJeuh2wj7rhnPs5GO6BfYOERfFTLmyT-EqcBhPmwn1yMREP8fkjgMslA~He~HDdDHy41y~D0mTiWjYRgCofZdEZJDFzQ6ZyINA-b6c~kJ9Gdjr~wayxIcQGXuTlAtoVZxF6VXhizQ1svHgfs3ozNSDtXPHbhcOgPIqmvsCXYEAQRO4LwkYK83wsqsYGQT8ystZOErb-ajC7m6Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  },
];



List<String> catList =[
  'Mobile & Tablets',
  'Electronics',
  'Laptop & Accessories',
  'Arts & Crafts',
  'Baby',
  'Beauty and Personal care',
  'Home & Kitchen',
  'Health & Household',
  'Sports',
  'Video games',
  'Luggage',
  'Women Fashion',
  'Men Fashion',
  'Smart Watches',
  'Luggage & bags',
  'Toys & Games',
];

List<String> phoneList =[
'Huawei',
'Samsung',
'Apple',
'Lenovo',
'Realme',
'Xiaomi',
];

List<String> phoneImgUrlList =[
  'https://s3-alpha-sig.figma.com/img/c9ec/9f1f/4cf29d5ffe5bf8792fa9f2026697e9e5?Expires=1667779200&Signature=MCoEiKWLA0GJ4V3a8KTIMoy1mL7qwKXOkTNpkXW0O53jRB512kfBcndXUOsi~0F~X8ma-XUvJdctGi5BTvDk6i6SRMp8jypMdfbD18uwFLBioQRyyjY6OeUQsyUjs1fzwDuCp~solP30yW4u3rjFh9qEqaduTJkl8iSuIjs9vNk5KhEVD4uT8dW2xtohI1uktQjuGeoLuPqpalK3Y9i315ugvkZducHMKFH9WIdppKW8xI7ICDhfGwpE6lkX26fgPt4uSwOz1ebSdith7kuAfnwIcYnqN~cAJzuey0b~U6ahPsvT2xdjNa-5wOCdJDfnuWCowN2EP5zzpK30PiUUQw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/bbc4/4547/83f5086d018e7230f48f1d610dbf8101?Expires=1667779200&Signature=gtdyJlZqmc~vnhHvIwRUqo8DsbL498xdk2hE1bI-gh6nyLgDUMvdICnOa4lObVQ46PKKaxCM2ksz4vYGHxk8Io7lvk-d50-mwpbPeupgxSeKHOMhxsFACXPkp4qwfDqy9D8OX1BIP8eLsqkuTNpnesPt6nmLYMiPsxLP5g92EL6uTFwdbhHbgW~fU5IFYZzGRR9WDbORT5nB4wW4DkU2fvjN92tCtvIBoz1sO~GktjU4BbWQbYUHboKjJo~cBu-g~v6DSWNlrs65qvJc4cGSWT~H5yKP7e3-IdYxLO-whD3bhAO7dRfwe2~1wJOD46LTFhxy~Sh4og7V3DOoqkeWDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://www.figma.com/file/YalPBPCPOL4G4VtSGqyZ2k/image/5985e4ae3e78ea1ac073e5e9cad893957d401d5d?fuid=1129456367606359487',
  'https://www.figma.com/file/YalPBPCPOL4G4VtSGqyZ2k/image/2149ef92415aadccaf3db68b676d21b378993530?fuid=1129456367606359487',
];

