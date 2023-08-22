#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "astring.h"

astr asfromcstr(char *cstr){
    
    astr new_array = calloc(strlen(cstr), sizeof(astr));
    strcpy(new_array, cstr);
    if(NULL == cstr){
        return NULL;
    }else{
        return new_array;
    }
}