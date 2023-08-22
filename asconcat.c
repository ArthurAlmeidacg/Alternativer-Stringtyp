#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "astring.h"

int asconcat(astr *str1, astr str2){
    
    int sum_length = strlen(*str1) + strlen(str2);
    *str1 = realloc(*str1, sum_length);
    
    if(*str1 == NULL){
        return -1;
    }else{
        strcat(*str1, str2);
        return 0;
    }
    
}