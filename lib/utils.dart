
import 'dart:math';

  randomNumber(int max){
    return new Random().nextInt(max);
  }


  countLength(List<int> list){

    int count = 0;

    list.forEach((f){
      if(f!=null){
        count++;
      }
    });

    return count;
  }