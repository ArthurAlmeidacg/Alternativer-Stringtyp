#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "astring.h"

void fputas(FILE *stream, astr str){
    stream = fopen("stream.txt", "w+");
    int length = strlen(str);
    
    char *arr = str;
    if(stream){
        for(int i = 0; i < length; i++){
            if(arr[i] == '\t'){
                arr[i] = '_';
            }else if(arr[i] == ' '){
                arr[i] = '_';
            }else if(arr[i] == '\n'){
                arr[i] = '_';
            }
        }
    }
    fputs (arr, stream);
    fclose(stream);
    free(arr);
}