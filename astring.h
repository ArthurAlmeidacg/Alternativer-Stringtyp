#include <stdio.h>

typedef char* astr;
astr asfromcstr(char *cstr);

int aslen(astr str);
int asgetc(astr str, int index);
int assetc(astr str, int index, char c);
int asconcat(astr *str1, astr str2);
void fputas(FILE *stream, astr str);