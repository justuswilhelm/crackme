#include "stdio.h"
#include "string.h"

int main() {
    char password[5];
    printf("Enter password\n");
    scanf("%4s", password);
    if (!strcmp(password, "z/Rf")) {
        printf("Correct!\n");
        return 0;
    } else {
        printf("Incorrect!\n");
        return 1;
    }
}
