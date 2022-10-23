#include <stdio.h>

int main() {
  int N;
  scanf("%d", &N);
  int A[N*sizeof(int)];
  int B[N*sizeof(int)];
  int mi = 100000;
  for (int i = 0; i < N; i++) {
    scanf("%d", &A[i]);
    if (A[i] < mi) {
      mi = A[i];
    }
  }
  int counter = 0;
  for (int i = 0; i < N; i++) {
    if (A[i] != mi) {
      B[counter] = A[i];
      counter++;
    }
  }
  for (int i = 0; i < counter; i++) {
    printf("%d ", B[i]);
  }
  return 0;
}
