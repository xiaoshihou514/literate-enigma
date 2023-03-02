#include <stdio.h>

typedef unsigned char *byte_ptr;

void show_bytes(byte_ptr start, size_t len) {
  int i;
  for (i = 0; i < len; i++) {
    printf(" %.2x", start[i]);
  }
  printf("\n");
}

void show_int(int x) { show_bytes((byte_ptr)&x, sizeof(int)); }

void show_float(float x) { show_bytes((byte_ptr)&x, sizeof(float)); }

void show_ptr(void *x) { show_bytes((byte_ptr)&x, sizeof(void *)); }

void show_byte_test(int val) {
  int ival = val;
  float fval = (float)ival;
  int *ival_ptr = &ival;
  show_int(ival);
  show_float(fval);
  show_ptr(ival_ptr);
}

int main(int argc, char *argv[]) {
  // show string byte val
  // show_bytes("mnopqr", 6);
  show_byte_test(12345);
  return 0;
}
