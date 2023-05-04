import 'package:flutter/material.dart';
import 'package:moniepoint_test/src/core/constant/assets.dart';
import 'package:moniepoint_test/src/viewmodel/model/product.dart';

class HomeViewModel with ChangeNotifier {
  var bars = [
    {
      'icon': 'home',
      'label': 'Home',
    },
    {
      'icon': 'voucher',
      'label': 'Voucher',
    },
    {
      'icon': 'wallet',
      'label': 'Wallet',
    },
    {
      'icon': 'settings',
      'label': 'Settings',
    },
  ];

  int _current = 0;

  int get current => _current;

  set current(int i) {
    _current = i;

    notifyListeners();
  }

  final appBarActionItem = [
    {'img': kCartEmpty, 'text': '1'},
    {'img': kMessage, 'text': '9+'},
  ];

  final productDetailsActionItem = [
    {'img': kHeart, 'text': ''},
    {'img': kShare, 'text': ''},
    {'img': kCartEmpty, 'text': '1'},
  ];

  final banner = [
    {
      'color': const Color(0xFFEBEDED),
      'tag': 'FASHION DAY',
      'large': '80% OFF',
      'small': 'Discover fashion that suits to\nyour style',
      'button': 'Check this out',
      'image': kClothesRack,
    },
    {
      'color': const Color(0xFFE6E0E0),
      'tag': 'BEAUTY SALE',
      'large': '12% OFF',
      'small': 'DISCOVER OUR\nBEAUTY SELECTION',
      'button': 'Check this out',
      'image': kBeauty,
    },
    {
      'color': const Color.fromARGB(255, 218, 225, 224),
      'tag': 'BLACK FRIDAY',
      'large': '50% OFF',
      'small': 'Discover fashion that suits to\nyour style',
      'button': 'Check this out',
      'image': kBlackFriday,
    },
  ];

  // handle [app bar] color based on scroll controller
  ScrollController scrollController = ScrollController();

  bool isScrolledToBottom() {
    final double maxScroll = scrollController.position.maxScrollExtent;
    final double currentScroll = scrollController.position.pixels;

    return maxScroll == currentScroll;
  }

  Color _color = Colors.transparent;

  Color get appBarColor => _color;

  set appBarColor(Color c) {
    _color = c;

    notifyListeners();
  }

  var products = <ProductModel>[
    ProductModel(
      id: '1',
      image:
          'https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_1280.jpg',
      name: 'Essential men\'s stripe shirt (Italian)',
      price: '\$12.00',
      type: 'Shirt',
      images: [
        'https://cdn.pixabay.com/photo/2018/03/12/22/15/clothing-3221103_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/12/23/22/19/photoshoot-1928086_1280.jpg',
        'https://cdn.pixabay.com/photo/2018/06/03/14/39/boots-3450702_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
      ],
    ),
    ProductModel(
      id: '2',
      image:
          'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_1280.jpg',
      name: 'Unisex sweat shirt (France)',
      price: '\$45.00',
      type: 'Shirt',
      images: [
        'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/02/09/14/07/funny-629675_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
        'https://cdn.pixabay.com/photo/2018/06/03/14/39/boots-3450702_1280.jpg',
      ],
    ),
    ProductModel(
      id: '3',
      image:
          'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
      name: 'Turkish stock jean (Blue & Rpped)',
      price: '\$24.00',
      type: 'Trousers',
      images: [
        'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
        'https://cdn.pixabay.com/photo/2021/11/15/05/25/boutique-6796399_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
      ],
    ),
    for (var i = 0; i < 10; i++)
      ProductModel(
        id: '${4 + i}',
        image:
            'https://cdn.pixabay.com/photo/2021/11/15/05/25/boutique-6796399_1280.jpg',
        name: 'Unisex unltra light cotton shirts',
        price: '\$13.50',
        type: 'Shirts',
        images: [
          'https://cdn.pixabay.com/photo/2021/11/15/05/25/boutique-6796399_1280.jpg',
          'https://cdn.pixabay.com/photo/2016/03/20/13/48/zip-1268656_1280.jpg',
          'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_1280.jpg',
          'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_1280.jpg',
        ],
      ),
  ];

  String currentDetailTab = 'About Item';

  var detailTab = [
    'About Item',
    'Reviews',
  ];

  var desc = [
    'Long-sleeve shirt in classic fit featuring button down collar',
    'Comfortable a classic dress shirt',
    'Durable combination fabric',
    'Goto classic button down shirt',
    'Shirt in classic fit featuring button down collar',
  ];

  ScrollPhysics _scrollPhysics = const ClampingScrollPhysics();

  ScrollPhysics get scrollPhysics => _scrollPhysics;

  set scrollPhysics(ScrollPhysics sp) {
    _scrollPhysics = sp;

    notifyListeners();
  }

  ScrollController scrollController2 = ScrollController();

  bool isScrollTop() {
    final double minScrool = scrollController2.position.minScrollExtent;
    final double currentScroll = scrollController2.position.pixels;

    return minScrool == currentScroll;
  }
}
