import 'package:myreview/models/counter_mode.dart';

class HomeMV{
  String titleAppBar="Home";
  String content="Hello User in Home Page";
  Counter datacounter=Counter();

  int getcounter()=>datacounter.count;
  int incrementcounter()=> datacounter.count++;
  int decrementcounter()=> datacounter.count--;
  int resetcounter()=>datacounter.count= 0;
  
}