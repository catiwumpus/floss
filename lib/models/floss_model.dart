class Floss {
  final List<FlossModel> floss;

  Floss({
    this.floss
  });

  factory Floss.fromJson(List<dynamic> parsedJson) {
    List<FlossModel> floss = new List<FlossModel>();
    floss = parsedJson.map((i) => FlossModel.fromJson(i)).toList();

    return new Floss(
      floss: floss
    );
  }
}

class FlossModel{
  final String name;
  final String number;
  final _Color color;
  bool inCart;
  bool hasPurchased;
  int owned;

  FlossModel({this.name, this.number, this.color, this.inCart, this.hasPurchased, this.owned});

  factory FlossModel.fromJson(Map<String, dynamic> parsedJson) {
    return FlossModel (
      name: parsedJson['name'],
      number: parsedJson['number'],
      color: _Color.fromJson(parsedJson['color']),
      hasPurchased: parsedJson['hasPurchased'],
      inCart: parsedJson['inCart'],
      owned: parsedJson['owned']
    );
  }

}

class _Color {
 final int red;
 final int green;
 final int blue;

  _Color({this.red, this.blue, this.green});

  factory _Color.fromJson(Map<String, dynamic> parsedJson) {
    return _Color(
      red: parsedJson['red'],
      green: parsedJson['green'],
      blue: parsedJson['blue']
    );
  }
}