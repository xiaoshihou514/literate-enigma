#include <stdio.h>

int least_significant(int x){
    return x & 0xFF;
}

int all_but_least_significant(int x){
    // could've made it a one liner but I feel the compiler would
    // do the job for me
    int least_significant = x & 0xFF;
    int all_but = x & (~0 - 0xFF)
    return all_but + least_significant
}
