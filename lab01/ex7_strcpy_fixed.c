#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  // TODO: Allocate memory to store the string "hello"
  // You may use your solution from a previous exercise;
  char message[6];
  message[0] = 'h';
  message[1] = 'e';
  message[2] = 'l';
  message[3] = 'l';
  message[4] = 'o';
  message[5] = '\0';

  // Print out the value before we change message
  printf("Before copying: %s\n", message);
  /*debug. expected: 5, 6*/ printf("strlen & sizeof of 'message': %lu, %lu\n",
                                   strlen(message), sizeof(message));

  // Creates another_string that contains a longer string
  char* long_message = "Here's a really long string";

  // TODO: Copy the string in long_message to message using strncpy
  strncpy(
      message, long_message,
      sizeof(
          message)); // should be '5' or 'strlen(message)' or 'sizeof(message)'?

  // Print out the value after we change message
  printf("After copying: %s\n", message);
  /*debug. expected: 6, 6*/ printf("strlen & sizeof of 'message': %lu, %lu\n",
                                   strlen(message), sizeof(message));

  return 0;
}
