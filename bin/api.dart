import 'package:dio/dio.dart';

void main()async{
  Dio dio = Dio();
  Map<String, dynamic> requestData = {
    "username": "ahmed",
    "password": "1234",
    'image': await MultipartFile.fromFile('path/to/image.jpg'),
  };
  // dio.post('https://test-api/register',data: requestData); // using JSON
  // dio.post('https://test-api/register',data: FormData.fromMap(requestData)); // using FormData

  dio.post('https://ntitodo-production-edbc.up.railway.app/api/register', data: FormData.fromMap(requestData));
}