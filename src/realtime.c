#include <stdio.h>
#include <unistd.h>

#define DELAY 300000
int main()
{
     printf("NCommander In Realtime - Version 0.1\n");
     printf("Copyright (c) 2021\n\n");

     printf("Starting up ...\n\n");
     printf("Searching for retrotechnology ");
     for (int i = 0; i != 3; i++) {
          printf(".");
          fflush(stdout);
          usleep(DELAY);
     }
     printf("\t[OK]\n");

     printf("Downloading archive ");
     for (int i = 0; i != 3; i++) {
          printf(".");
          fflush(stdout);
          usleep(DELAY);
     }
     printf("\t\t\t[OK]\n");

     printf("Editing content ");
     for (int i = 0; i != 3; i++) {
          printf(".");
          fflush(stdout);
          usleep(DELAY);
     }
     printf("\t\t\t[OK]\n");

     printf("Loading audio ");
     for (int i = 0; i != 3; i++) {
          printf(".");
          fflush(stdout);
          usleep(DELAY);
     }
     printf("\t\t\t[OK]\n");

     printf("Loading video ");
          for (int i = 0; i != 3; i++) {
          printf(".");
          fflush(stdout);
          usleep(DELAY);
     }
     printf("\t\t\t[OK]\n");
     
     for (int j = 0; j != 10; j++) {
          printf("Beginning playback ");
          for (int i = 0; i != 3; i++) {
               printf(".");
               fflush(stdout);
               usleep(DELAY);
          }
          printf("\r                                    ");
          printf("\r");
     }
     printf("\n");
     return 0;
}
