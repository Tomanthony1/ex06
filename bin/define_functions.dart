library define_functions;

part 'function_arguments.dart';

//1.
/*
void ex_1(){
  var p = 'laval'; //Exemple
  String fpal = palind(p);
  print('1. Le résultat de notre test, qui est de savoir si $p est un palindrôme, est : $fpal');
}
*/

//2.
void ex_2(){
  int days1 = 11; //Exemple
  var month1 = 'février';
  int year1 = 1992;
  int days2 = 23;
  var month2 = 'novembre';
  int year2 = 1998;
  var number_of_days_between_two_dates=numberdays(days1, month1,
                                                  year1, days2,
                                                  month2, year2);
  print('2. Le nombre de jours entre le \n   $days1 $month1 $year1 et le \n   $days2 $month2 $year2 est de : \n   $number_of_days_between_two_dates jours.\n');
}

//3.
void ex_3(){
  var grade = 75.7; //Exemple
  String return_grade_in_letters = convert(grade);
  print('3. La note en lettres de $grade \n   est de : $return_grade_in_letters.\n');
}

//4.
void ex_4(){
  var listnames = ['Tom', 'Gwenaell', 
                   'Pilloud', 'Alexandre', 
                   'Ericsonn'];
  var list = listofnames(listnames);
  print('4. $list');
}
  
//5.
/*
void ex_5(){
    var list_of_players = [{'Xavi', 'Barcelone'}, 
                           {'Olivier Giroud', 'Arsenal'}, 
                           {'Messi', 'Barcelone'}, 
                           {'Ibrahimovic', 'PSG'}, 
                           {'Nani', 'Manchester'}]; 
    var listp = listplayershome(list_of_players);
    print('5. La liste est : $listp');
}
*/
void main(){
  print('SIO 2109\n\nTom Anthony Olesen\n\nExercice 06\n\n');
  //ex_1();
  ex_2();
  ex_3();
  ex_4();
  //ex_5();
}
