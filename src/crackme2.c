#include "stdio.h"
#include "string.h"

char p1 = '4';
char p2 = '8';
char p3 = 'd';
char p4 = '4';

int main() {
    char password[5];
    printf("Enter password\n");
    scanf("%4s", password);
    if (password[0] != p1) {
        goto fail;
    }
    if (password[1] != p2) {
        goto fail;
    }
    if (password[2] != p3) {
        goto fail;
    }
    if (password[3] != p4) {
        goto fail;
    }
    printf("Correct!\n");
    return 0;
fail:
    printf("Incorrect!\n");
    return 1;
}
