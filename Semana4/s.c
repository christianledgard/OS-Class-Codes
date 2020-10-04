#include <stdio.h>
#include <pthread.h>
volatile int i;

int lock_value = 0;

void lock() {
	int valor;
  while(  (valor = __sync_val_compare_and_swap(&lock_value, 0, 1)) != 0 )
  
  
}

void* fthread_0(void *v) {

	return NULL;
}

void* fthread_1(void *v) {

	return NULL;
}

int main() {
  pthread_t thread_0;
  pthread_t thread_1;
  pthread_create(&thread_0,NULL,fthread_0, NULL);	
	pthread_create(&thread_1,NULL,fthread_1, NULL);

	pthread_join(thread_0,NULL);
	pthread_join(thread_1,NULL);

	pthread_exit(NULL);
}

