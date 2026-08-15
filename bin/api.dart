
import 'package:dio/dio.dart';

void main()async{
  Dio dio = Dio();
  Map<String, dynamic> requestData = {
    "username": 'ahmed01',
    "password": '1234567'
  };
try{
    var response = await dio.post(
    "https://ntitodo-production-cddf.up.railway.app/api/login",
    data: FormData.fromMap(requestData),
    );

    print(response.toString());
}
catch(e){
  print(e.toString());
  if(e is DioException){
    print(e.response?.data.toString());
  }
}
}