#include <stdio.h>
#include <time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;
  clock_t start_time, end_time;
  double duration = 0;
  scanf("%d",&number);

  start_time =clock();
  result = fibonacci(number);   
  end_time=clock();

  duration = (double) (end_time - start_time) / CLOCKS_PER_SEC; //the unit of clock() returned value is millisecond
  
  printf("The fibonacci sequence at %d is: %d\n", number, result);
  printf("The duration running fibonacci function is %lf second\n", duration );
}

