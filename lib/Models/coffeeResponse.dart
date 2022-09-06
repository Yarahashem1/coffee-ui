import 'package:coffee/Models/coffee.dart';

class coffeeResponse{
  coffee? coff;
  coffeeResponse.fromJson(Map<String,dynamic> data){
    coff=coffee.fromJson(data['coffee']);
  }
}