import 'dart:math';


class bmiBrain{
  int height;
  int weight;
  double bmi =0;
  bmiBrain({required this.height, required this.weight}){
    bmi=weight/ pow(height/100 , 2);
  }

  String getResult(){
    if(bmi< 18.5){
      return 'Underweight';
    }else if(bmi<25){
      return 'Normal';
    }else if(bmi<30){
      return 'Overweight';
    }else{
      return 'Obese';
    }
  }
  String getBMI(){
    return bmi.toStringAsFixed(2);
  }
  String getInterp(){
    if(bmi< 18.5){
      return "You are going to die, if you don't eat any thing";
    }else if(bmi<25){
      return 'You are perfect';
    }else if(bmi<30){
      return 'you are Overweight, exercise more';
    }else{
      return 'You are going to explode, be care ful...';
    }
  }



}