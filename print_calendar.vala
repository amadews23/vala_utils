static int main(string[] args) {

/*
Mes 3 del anyo 2023
 LU  MA  MI  JU  VI  SA  DO 
 27  28  01  02  03  04  05 
 06  07  08  09  10  11  12 
 13  14  15  16  17  18  19 
 20  21  22  23  24  25  26 
 27  28  29  30  31  01  02 
 03  04  05  06  07  08  09 
*/

  DateTime fecha0 = new DateTime.local(2023,3,1,1,1,1);
  
  print("Mes %i del anyo %i\n",fecha0.get_month(),fecha0.get_year() );
  print(" LU  MA  MI  JU  VI  SA  DO \n");

  for (int i=1 ; i < fecha0.get_day_of_week(); i++) {
        print(" %i ",fecha0.add_days (-(fecha0.get_day_of_week()-i)).get_day_of_month());
    }

  for (int i=0 ; i < 43-fecha0.get_day_of_week(); i++) {
        if ( fecha0.add_days (i).get_day_of_month() < 10 ) {
            print (" 0%i ",fecha0.add_days (i).get_day_of_month()); 
        } else {
            print (" %i ",fecha0.add_days (i).get_day_of_month()); 
        }
        if (fecha0.add_days (i).get_day_of_week() == 7) {
            print("\n");
        }   
    }
    print("\n");

    return 0;
}
