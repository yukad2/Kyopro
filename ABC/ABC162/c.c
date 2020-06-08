#include<stdio.h>

int gcd(int x, int y)
 {
     int t;
 
     while (y != 0) {
         t = x % y;  x = y;  y = t;
     }
     return x;
}

int main(){
int k;
long sum;
scanf("%d",&k);
sum = 0;
for(int a=1;a<=k;a++){
    for(int b=1;b<=k;b++){
        for(int c=1;c<=k;c++){
            sum+=gcd(gcd(a,b),c);
        }
    }
}
printf("%ld\n",sum);
return 0;
}