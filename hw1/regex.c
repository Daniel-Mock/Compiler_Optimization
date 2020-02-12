#include <stdio.h>
#include <stdlib.h>

int main() {
char outstring[500];
char input[500];
printf("Enter String:");
scanf("%s", input);
int state = 0;
int i = 0;

while(input[i] != '\0'){
  char character = input[i];
  switch(state){
  case(0):
  if(character == '2' || character == '0'){
    outstring[i] = character;
    state = 1;
  }
  else{
    printf("Invalid Expression\n");
    return 0;
}
  break;

  case(1):
  if(character == '0'){
    outstring[i] = character;
  }
  else if(character == '1'){
    outstring[i] = character;
    state = 2;
}
  else{
    outstring[i] = '\n';
    printf("%s\n", outstring);
    return 0;
}
  break;

  case(2):
  if(character == '2'){
    outstring[i] = character;
}
  else{
    outstring[i] = '\n';
    printf("%s\n", outstring);
    return 0;
}
  break;

  default:
  outstring[i] = '\n';
  printf("%s\n", outstring);
  return 0;

}

i++;
}
outstring[i] = '\n';
printf("%s\n", outstring);
return 0;

}

