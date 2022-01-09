//
//  main.m
//  Star Diamond Objective-c
//
//  Created by Akram Elhayani on 09/01/2022.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    
    int size = 50;
    int mid =(size-(size%2))/2;// get the mid line
    
    
    // print the first half
    for (int count =1; count<=mid; count++) {
        int skip = (mid+1) - count;
        //char line[11] = " ";
        char *line =malloc(size);
        for (int i = 0 ; i<skip; i++) {
            line[i] =' ';
        }
        for (int i = 0 ; i<count*2; i+=2) {
            line[(skip + i)-1] =' ';
            line[skip + i] ='*';
        }
        printf("%s\n", line);
    }
    
   // print the secound half
    for (int count =mid-1; count>0; count--) {
        int skip = (mid+1) - count;
        char *line =malloc(size);
        for (int i = 0 ; i<skip; i++) {
            line[i] =' ';
        }
        for (int i = 0 ; i<count*2; i+=2) {
            line[(skip + i)-1] =' ';
            line[skip + i] ='*';
        }
        printf("%s\n", line);
    }
    return 0;
}
