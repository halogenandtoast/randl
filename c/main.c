#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

#define NELEMS(x) (sizeof(x) /sizeof(x[0]))

//Based on Knuth-Fisher-Yates shuffle
static void shuffle(void *array, size_t n, size_t size) {
  struct timeval tv;
  gettimeofday(&tv, NULL);
  int usec = tv.tv_usec;
  srand48(usec);

  char tmp[size];
  char *arr = array;
  size_t stride = size * sizeof(char);

  if (n > 1)  {
    size_t i;
    for(i = n - 1; i > 0; i--) {
      size_t rnd = (size_t) rand();
      size_t j = (unsigned int) (drand48()*(i+1));
      memcpy(tmp, arr + j * stride, size);
      memcpy(arr + j * stride, arr + i * stride, size);
      memcpy(arr + i * stride, tmp, size);
    }
  }
}

int main() {
  char* names[] = {"Matt", "Brandy"};
  char* factions[] = {"East", "West"};

  shuffle(names, NELEMS(names), sizeof(names[0]));
  shuffle(factions, NELEMS(factions), sizeof(factions[0]));

  int i;
  for(i = 0; i < NELEMS(names); i++) {
    printf("(%s, %s)\n", names[i], factions[i]);
  }
}
