#include <stdio.h>

int read_input_and_find_min(FILE *input, int *A, int N) {
  int mi = 100000;
  for (int i = 0; i < N; i++) {
    fscanf(input, "%d", &A[i]);
    if (A[i] < mi) {
      mi = A[i];
    }
  }
  return mi;
}

int func(int *A, int *B, int N, int mi) {
  int counter = 0;
  for (int i = 0; i < N; i++) {
    if (A[i] != mi) {
      B[counter] = A[i];
      counter++;
    }
  }
  return counter;
}

void write_result(FILE *output, int *B, int counter) {
  for (int i = 0; i < counter; i++) {
    fprintf(output, "%d ", B[i]);
  }
}

int main(int argc, char * argv[]) {
  FILE *input = fopen(argv[1], "r");
  FILE *output = fopen(argv[2], "w");
  int N;
  fscanf(input, "%d", &N);
  int A[N*sizeof(int)];
  int B[N*sizeof(int)];
  int mi = read_input_and_find_min(input, A, N);
  int counter = func(A, B, N, mi);
  write_result(output, B, counter);
  fclose(input);
  fclose(output);
  return 0;
}
