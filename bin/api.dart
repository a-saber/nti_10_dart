
import 'package:dio/dio.dart';

void main()async{
  Dio dio = Dio();
  Map<String, dynamic> requestData = {
    "username": 'ahmed01',
    "password": '123456'
  };
  var response = await dio.post(
    "https://ntitodo-production-cddf.up.railway.app/api/login",
    data: FormData.fromMap(requestData),
    queryParameters: {
      'lat': '30.1',
      'lon': '31.1'
    },
    options: Options(
      headers: {
        'Authorization': 'Bearer '
      }
    )

    );

    print(response.toString());
}