#include <stdio.h> // for stdout
#include <stdlib.h>
#include <string.h>
#include "astring.h"


// astr asfromcstr(char *cstr){
    
//     astr new_array = calloc(strlen(cstr), sizeof(astr));
//     strcpy(new_array, cstr);
//     if(NULL == cstr){
//         return NULL;
//     }else{
//         return new_array;
//     }
// }

// int aslen(astr str){
//     int count = 0;
//     if(str[0] == 0){
//         return -1;
//     }
//     for(int i = 0; i < strlen(str); i++){
//         if(str[i] != '\0'){
//             count++;
//         }
//     }
//     return count;
// }
// int asgetc(astr str, int index){
//     int ASCII;
//     if(index >= 0 && index <= aslen(str)){
//         ASCII = str[index];
//         return ASCII;
//     }else{
//         return -1;
//     }
// }
// int assetc(astr str, int index, char c){

//     int length = strlen(str); 
//     char *new_arry = calloc(length, sizeof(char));
//     new_arry = str;  
//     if(index >= 0 && index <= length){
//         for(int i = 0; i < length; i++){
//             if(i == index){
//                 str[i] = c;
//             }else{
//                 str[i] = new_arry[i];
//             }
//         } 
//         return 0;
//     }else{
//         return -1;
//     }
// }
// int asconcat(astr *str1, astr str2){
    
//     int sum_length = strlen(*str1) + strlen(str2);
//     *str1 = realloc(*str1, sum_length);
    
//     if(*str1 == NULL){
//         return -1;
//     }else{
//         strcat(*str1, str2);
//         return 0;
//     }
    
// }

// void fputas(FILE *stream, astr str){
//     stream = fopen("stream.txt", "w+");
    
//     char *arr = str;
//     if(stream){
//         for(int i = 0; i < strlen(arr); i++){
//             if(arr[i] == '\t'){
//                 arr[i] = '_';
//             }else if(arr[i] == ' '){
//                 arr[i] = '_';
//             }else if(arr[i] == '\n'){
//                 arr[i] = '_';
//             }
//         }
//     }
//     fputs (arr, stream);
//     fclose(stream);
// }

int main()
{
    astr str1 = asfromcstr("Hello!");
    astr str2 = asfromcstr("World ");
    int len_str1 = aslen(str1);
    printf("Length of str1 is %u\n", len_str1);
    assetc(str2, 5, asgetc(str1, 5)); // str2 : "World " -> "World!"
    assetc(str1, 5, ' ');    // str1 : "Hello!" -> "Hello "
    asconcat(&str1, str2);   // str1 : "Hello " -> "Hello World !"
    int concat_len = aslen(str1);
    printf("Length of str1 now is %u\n", concat_len);
    assetc(str1, 5, '\0'); // str1 : "Hello\0World!"
    fputas(stdout, str1);   // " Hello_World!"
    printf("\n");
    free(str1);
    free(str2);
    return 0;
}

