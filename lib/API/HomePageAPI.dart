import "package:http/http.dart";

import 'URLs.dart';
// گرفتن دیتا از ای پی ای
Future<Response> getHomeData() async {
  Client client = new Client();
  Response response;
  response = await client
      .get(
    host + myurl,
    // body: json.encode(
    //   {
    //     "password": newPassword,
    //     "emailAddress": newEmail,
    //     "displayName": newFullname
    //   },
    // ),
  )
      .whenComplete(() {
    client.close();
  });
  return response;
}
