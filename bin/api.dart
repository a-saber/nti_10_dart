import 'package:dio/dio.dart';
  Dio dio = Dio();

void main() async {
  await register();
}

register()async
{
  try{
    var response = await dio.post(
      'https://ntitodo-production-cddf.up.railway.app/api/register',
      data: FormData.fromMap({
        'username': 'ahmed007',
        'password': '123456',
      })
    );
    print(response.data.toString());
  }
   catch(e){
    handleException(e);
   }
}
weather()async{
  
   try{
     var response = await dio.get(
    'https://api.openweathermap.org/data/2.5/weather',
    queryParameters: {
      'lat': 30.1234,
      'lon': 31.1234,
      'appid': '39ef56aa87e0f9d833e66cd9111de959',
      'units': 'metric'
    }
  );

  print(response.data.toString());
   }
   catch(e){
    handleException(e);
   }
}

void handleException(Object e){
  
    if(e is DioException){
      if(e.response?.data != null){
        var errorResponse = e.response?.data as Map<String, dynamic>;
        print(errorResponse['message']);
      }
      else{
        print('Network error happened try again later');
      }
      
    }
    else{
      print('error happened try again later');
    }
}