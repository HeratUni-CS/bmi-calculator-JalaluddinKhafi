import 'dart:math';


class bmiBrain{
  int height;
  int weight;
  double bmi =0;
  bmiBrain({required this.height, required this.weight,required this .bmi}){
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
}