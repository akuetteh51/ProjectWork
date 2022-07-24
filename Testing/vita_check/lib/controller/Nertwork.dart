import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void netData() async {
  http.Response response = await http.get(Uri.parse(
      'https://iothealth-6a509-default-rtdb.firebaseio.com/SensorData.json'));
  // print(response.body);
  if (response.statusCode == 200) {
    String data = response.body;
    var dat = convert.jsonDecode(response.body) as Map<String, dynamic>;
    int Temp = dat['-N7RYX879nqw3ARlxCd-']['Temperature'];

    print(Temp);
  } else {
    print(response.statusCode);
  }
}

void main() {
  netData();
}
