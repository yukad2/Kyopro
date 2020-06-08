#include<stdio.h>

int gcd(int a, int b){
    int aa=a;
    int bb=b;

    if( aa< bb){
        int c;
        c=bb;
        aa=bb;
        bb=c;
    }
    int r;
    r = aa % bb;
    if (r == 0){
        return bb;
    }
    return gcd(r, bb);
}

int main(){
    printf("%d\n",gcd(gcd(1,2),3));
}