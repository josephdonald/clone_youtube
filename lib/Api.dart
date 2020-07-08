import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyA6e2TgsAOdZQyIQKnWTlIKyXbVuJYrc8I";
const ID_CANAL = "UChIqSiny20hkftOix4VOf2A";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api{

  search(String value) async{

    http.Response response = await http.get(
      URL_BASE + "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$value"
    );

    if (response.statusCode == 200){

      Map<String, dynamic> dataJson = json.decode(response.body);
      print("resultado: " + dataJson["items"][2]["snippet"]["title"].toString());

    } else {
      print("resultado: ERRO");
    }

  }

}