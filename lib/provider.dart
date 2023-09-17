
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProviderTest extends ChangeNotifier{
  List<int> items = [1,2,3,4,5];
  void add(){
    int last = items.last;
    items.add(last+1);
    notifyListeners();

  }
  void remove(){
    if(items.length > 1){
      items.removeLast();}
    else{
      return;
    }
    notifyListeners();
  }

  IconData heart = Icons.favorite_border;

  void change(){
    if(heart == Icons.favorite_border) {
      heart = Icons.favorite;
      add();
    }
    else {
      heart = Icons.favorite_border;
      remove();
    }
    notifyListeners();
  }



}