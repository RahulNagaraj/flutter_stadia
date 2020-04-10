import 'package:flutterstadia/image_asset.dart';

class Friend {
  final String name;
  final String imagePath;
  final bool isOnline;

  Friend({this.name, this.imagePath, this.isOnline});
}

final friends = [
  Friend(name: 'Tyrion', imagePath: friend_tyrion,  isOnline: true),
  Friend(name: 'Cersei', imagePath: friend_cersei,  isOnline: false),
  Friend(name: 'Bran', imagePath: friend_bran,  isOnline: false),
  Friend(name: 'Arya', imagePath: friend_arya,  isOnline: true),
];