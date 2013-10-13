part of define_functions;

//1.
palind (y) {
  var answer = '';
  var l_un = 0;
  int l = y.length;
  if (l%2 == 0) { //si le mot est de longueur paire
    l_un = l / 2;
  }
  if (l%2 != 0) { //si le mot est de longueur impaire
    l_un = (l - 1) / 2;
  }
  for (var i = 0; i < l_un; i++) {
    if (y.elementAt (i) == 
       y.elementAt (l - i - 1)) {
      answer = 'Oui';
    } else {
      answer = 'Non';
      }
  }
  return answer;
}

//2.  

numberdays (d1, m1, 
           y1, d2, 
           m2, y2) {
  var list = ['janvier', 'février', 
                 'mars', 'avril', 
                 'mai', 'juin', 
                 'juillet', 'août',
                 'septembre', 'octobre', 
                 'novembre', 'décembre'];
  int days_in_a_month = 30;
  int months_in_a_year = 12;
  int days_in_a_year = 360;
  int days_between_two_dates = 0;
  int t = list.indexOf ('$m2') -
          list.indexOf ('$m1') - 1;
  int o = (y2 - y1 - 1) * months_in_a_year;
  int z = months_in_a_year - 
          list.indexOf ('$m1') - 
          1 + list.indexOf ('$m2') + o;
  if (y1 == y2) {
    days_between_two_dates = t * days_in_a_month +
                             d2 + days_in_a_month - d1;
  }
  if (y1 != y2) {
    days_between_two_dates = z * days_in_a_month + 
                             days_in_a_month - d1 + d2;
  }
  return days_between_two_dates;
}

//3. 
convert (n) {
  int k = 0;
  var grades = {'A+' : '95<n<100', 'A' : '91,5<n<94,99',
                'A-' : '88<n<91,49', 'B+' : '84.5<n<87.99',
                'B' : '81<n<84.49', 'B-' : '77,5<n<80.99', 
                'C+' : '74<n<77,49', 'C' : '70,5<n<73,99', 
                'C-' : '67<n<69,99', 'D+' : '63,5<n<66,99', 
                'D' : '60<n<63,49', 'E' : '0<n<59,99' };
  if (95 < n && n < 100) {
    k = 0;
  }
  if (91.5 < n && n < 94.99) {
    k = 1;
  }
  if (88 < n && n < 91.49) {
    k = 2;
  }
  if (84.5 < n && n < 87.99) {
    k = 3;
  }
  if (81 < n && n < 84.49) {
    k = 4;
  }
  if (77.5 < n && n < 80.99) {
    k = 5;
  }
  if (74 < n && n < 77.49) {
    k = 6;
  }
  if (70.5 < n && n < 73.99) {
    k = 7;
  }
  if (67 < n && n < 69.99) {
    k = 8;
  }
  if (63.5 < n && n < 66.99) {
    k = 9;
  }
  if (60 < n && n < 63.49) {
    k = 10;
  }
  if (0 < n && n < 59.99) {
    k = 11;
  }
  var list = grades.keys.toList();
  var results = list [k];
  return results;
}

//4.
listofnames (x) {
  var list_below_8 = new List ();
  var list_over_8 = new List ();
  var list_equal_8 = new List ();
  for (var i=0; i<x.length;i++) {
    int lx = x[i].length;
    if (lx < 8) {
      list_below_8.add(x[i]);
    }
    if ( lx > 8) {
      list_over_8.add(x[i]);
    }
    if (lx == 8) {
      list_equal_8.add(x[i]);
    }
  }
  var results = 'La liste < 8 : $list_below_8\n   La liste > 8 : $list_over_8\n   La liste = 8 : $list_equal_8';
  return results;
}

//5.
/*listplayershome (lp) {
  var setb = new Set();
  var setm = new Set();
  var setp = new Set();
  var seta = new Set();
  var map = {'Barcelone' : '', 'Manchester' : '', 'PSG' : ''};
  for (var i = 0; i < lp.length; i++) {
    if (lp[i].contains('Barcelone') {
      setb.add(lp[i]);
    }
    if (lp[i].contains('Manchester') {
      setm.add(lp[i]);
    }
    if (lp[i].contains('PSG') {
      setp.add(lp[i]);
    }
    if (lp[i].contains('Arsenal') {
      seta.add(lp[i]);
    }
  }
  map['Barcelone']=setb;
  map['Manchester']=setm;
  map['PSG']=setp;
  map['Arsenal']=seta;
  return map;
}
*/