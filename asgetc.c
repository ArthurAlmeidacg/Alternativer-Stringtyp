#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "astring.h"

int asgetc(astr str, int index){
    int ASCII;
    int length = strlen(str);
    if(index >= 0 && index <= length){
        ASCII = str[index];
        return ASCII;
    }else{
        return -1;
    }
}