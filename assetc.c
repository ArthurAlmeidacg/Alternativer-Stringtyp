#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "astring.h"

int assetc(astr str, int index, char c){

    int length = strlen(str); 
    char *new_arry = calloc(length, sizeof(char));
    new_arry = str;  
    if(index >= 0 && index <= length){
        for(int i = 0; i < length; i++){
            if(i == index){
                str[i] = c;
            }else{
                str[i] = new_arry[i];
            }
        } 
        free(new_arry);
        return 0;
    }else{
        free(new_arry);
        return -1;
    }
}