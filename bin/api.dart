import 'package:dio/dio.dart';
  Dio dio = Dio();

void main() async {
  await updateTask(); 
}


updateTask()async{
  try{
    var response = await dio.put(
      'https://ntitodo-production-cddf.up.railway.app/api/tasks/51',
      options: Options(
        headers: {
          'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc4ODUxODk5MCwianRpIjoiNzUwMmFkMGEtOWYxYS00M2NmLThmY2MtOTk5ODdlMTYyMWVjIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6MiwibmJmIjoxNzg4NTE4OTkwLCJjc3JmIjoiMzU0Yjc3Y2EtZjhiYy00YjAyLThjNTMtOTZiM2UyODQ0NjIzIiwiZXhwIjoxNzg4NTE5ODkwfQ.xbxMCay2EI4jjJtjLfV1gzep7b6TTrXpLPHFyDYK2m0'
        }
      ),
      data: FormData.fromMap({
        'title': 'updated title from dart ',
        'description': 'updated description from dart',
        
      })
    );
    print(response.data.toString());
  }
  catch(e){
    handleException(e);
  }
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