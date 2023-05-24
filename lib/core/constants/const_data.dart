import 'package:responsive_ui_demo/demo_ui/data/models/post_model.dart';
import 'package:responsive_ui_demo/demo_ui/data/models/user_model.dart';

final List<User> kUsers = [
  User(
    height: 165,
    weight: 53,
    userName: '안녕 나 응애',
    imageUrl: 'assets/images/image1.png',
    isVerified: true,
  ),
  User(
    height: 165,
    weight: 53,
    userName: 'ㅇㅅㅇ',
    imageUrl: 'assets/images/image2.png',
    isVerified: false,
  ),
];

final List<Post> posts = [
  Post(
    user: kUsers[0],
    postDateTime: DateTime.now(),
    title: '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
    body: '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ '
        '혹시 어떤 상품이 제일 괜찮았어? \n\n'
        '후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 '
        '제일 재밌었다던데 맞아???\n\n'
        '올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 '
        '아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 '
        '있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
    images: [
      'assets/images/image3.jpg',
      'assets/images/image3.jpg',
      'assets/images/image3.jpg'
    ],
    hashTags: ['#2023', '#TODAYISMONDAY', '#TOP', '#POPS!', '#WOW', '#ROW'],
  )
];
