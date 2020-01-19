import 'dart:convert';

var JSON = const JsonCodec();
void main(){
  //编码
  var encoded = JSON.encode([1, 2, { "a": null }]);
  //解码
  var decoded = JSON.decode('["foo", { "bar": 499 }]');

  print(encoded);
  print(decoded);

  /* json to map */
  Map<String, dynamic> user = JSON.decode('''{
  "name": "John Smith",
  "email": "john@example.com"
}''');

  print('Howdy, ${user['name']}!');
  print('We sent the verification link to ${user['email']}.');
}