#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Wrong entry, Usage: sudo ./capslock <0 or 1>\n");
        return 1; // Exit if no argument is passed
    }

    int variable = open("/sys/class/leds/input2::capslock/brightness", O_RDWR);
    if (variable < 0) {
        perror("Error opening LED brightness file");
        return 1; // Exit if the file cannot be opened
    }

    dprintf(variable, "%s\n", argv[1]); // Write the value to the brightness file

    // Print new status on a new line
    if (strcmp(argv[1], "1") == 0) {
        printf("Capslock LED ON\n");
    } else if (strcmp(argv[1], "0") == 0) {
        printf("Capslock LED OFF\n");
    }

    close(variable); // Close the file descriptor
    return 0;
}

