public class HelloWorld{
  public String varfromVSCode = 'Var from VS Code';
  public String varfromVSCode1 = 'Var1 from VS Code';
       public string getDay(Integer n){
         String d = '';
            Switch on n{
                when 0{
                         d = 'monday';
                }
                when 1{
                         d = 'tuesday';
                }
                when 2{
                         d = 'wednesday';
                }
                when 3{
                         d = 'thrusday';
                }
                when 4{
                         d = 'friday';
                }
                when 5{
                         d = 'saturday';
                }
                when else {
                         d = 'invalid';
                }
                        }
           return d;
}

public string getDay(String s){
String d = '';
Switch on s{
when 'mon' {
 d = 'monday';
}
when 'tue'{
d = 'tuesday';
}
when 'wed'{
d = 'wednesday';

}
when 'thur'{
d = 'thrusday';

}
when 'fri'{
d = 'friday';

}
when 'sat'{
d = 'saturday';

}
when else {

d = 'invalid';
}


}
return d;
}




}




  /* private String greeting = 'Hello World from VIvek';
   private String GA = 'good afternoon';
   private String GM = 'good morning';
   private String GE = 'good evening';
   
   public void printMessage(String message){
   
   System.debug(message);
   
   }
 
 /*public void printGreeting(){
 System.debug(greeting);
 }
 
  public void printGA(){
 System.debug(GA);
 }
 
  public void printGM(){
 System.debug(GM);
 }
 
  public void printGE(){
 System.debug(GE);
 }
 */