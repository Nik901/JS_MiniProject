import java.util.* ;
//import java.io.Exception.* ;
import java.text.*;



public class Thread1{
   public static void main(String args[])
  {
     Thread t1=new CounterThread();
     t1.setName("A");
      t1.start();

         Thread t2=new CounterThread();
     t2.setName("B");
      t2.start();
  }
}

class CounterThread extends Thread{
 public static final SimpleDateFormat FMT=new SimpleDateFormat("hh:mm:ss");

public void start()
{
  System.out.println("starting:"+getName());
super.start();
}
public void run()
{
  for(int i=0;i<8;i++){
try{
sleep(200);
}

catch(Exception e)
{
break;
}
  System.out.println(FMT.format(new Date())+"Thread  "+getName()+":Count:"+i);
}
}}