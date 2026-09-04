import 'package:dio/dio.dart';
  Dio dio = Dio();

void main() async {
  await getMyTasks(); 
}

getMyTasks()async{
  try{
    var response = await dio.get(
      'https://ntitodo-production-cddf.up.railway.app/api/my_tasks',
      options: Options(
        headers: {
          'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODUxNDk0NiwianRpIjoiNjQwNTQzZGQtZWE1Yi00OWYzLWFiMDctYTJmMGExOTAyYmIxIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6MiwibmJmIjoxNzg4NTE0OTQ2LCJjc3JmIjoiZjcwYTBmMDctNDc5MC00Yjc4LWFjZjAtNzQ3NjRhNWNiMWM4IiwiZXhwIjoxNzg4NTE1ODQ2fQ.21-je2XuAtU5bWz1pCGyr9aUwAlUpLiG157Au_HoNrw'
        }
      )
    );
    print(response.data.toString());
  }
  catch(e){
    handleException(e);
  }
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