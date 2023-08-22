#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "astring.h"

int aslen(astr str){
    int count = 0;
    int length = strlen(str);
    if(str == NULL){
        return -1;
    }
    for(int i = 0; i < length; i++){
        if(str[i] != '\0'){
            count++;
        }
    }
    return count;
}