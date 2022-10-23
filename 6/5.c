#include <stdio.h>

int get_input_and_find_min(int *A, int N) {
  int mi = 100000;
  for (int i = 0; i < N; i++) {
    scanf("%d", &A[i]);
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

void print_result(int *B, int counter) {
  for (int i = 0; i < counter; i++) {
    printf("%d ", B[i]);
  }
}

int main() {
  int N;
  scanf("%d", &N);
  int A[N*sizeof(int)];
  int B[N*sizeof(int)];
  int mi = get_input_and_find_min(A, N);
  int counter = func(A, B, N, mi);
  print_result(B, counter);
  return 0;
}

