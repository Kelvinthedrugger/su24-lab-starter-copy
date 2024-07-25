#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct Course {
    int id;
    char *name;
};

struct Course *make_course(int id, char *name) {
    struct Course *new_course = malloc(sizeof(struct Course));
    new_course->id = id;
    new_course->name = name; // error no.1

    return new_course; // the other 2 errors
}
int main() {
    struct Course *cs161 = make_course(161, "Computer Security");
    printf("Welcome to CS%d: %s!\n", cs161->id, cs161->name);

    return 0;
}
