import '../image_asset.dart';

class LastPlayedGame {
  final String name;
  final int hoursPlayed;
  final String imagePath;
  final double gameProgress;

  LastPlayedGame({this.name, this.hoursPlayed, this.imagePath, this.gameProgress});
}

final lastPlayedGames = [
  LastPlayedGame(name: "Assasin's Creed Odyssey", hoursPlayed: 10, gameProgress: 0.20, imagePath: game_assasins),
  LastPlayedGame(name: "Dead Cells", hoursPlayed: 50, gameProgress: 0.80, imagePath: game_dead_cells),
  LastPlayedGame(name: "Stardew Valley", hoursPlayed: 90, gameProgress: 0.95, imagePath: game_stardew_valley),
  LastPlayedGame(name: "No Man's Sky", hoursPlayed: 3, gameProgress: 0.10, imagePath: game_no_mans_sky),
];

final popularWithFriends = [
  game_pubg,
  game_fortnite,
  game_apex,
  game_clash_royale,
  game_asphalt,
  game_minecraft
];