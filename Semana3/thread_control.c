#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

volatile int s = 0;
volatile int orden = 0;
volatile int interest[2] = {0,0};

void* fthread_0(void *v){
    int i;
    for (i = 0; i < 4; i++){
        interest[0] = 1; // indica interes
        sleep(2);
        while (interest[1]) // mientras la otra thread ejecuta
        if(orden != 0){
            interest[0] = 0;
            while (orden != 0); // verificar orden
            interest[0] = 1;
        }    
        
        s = 0;
        printf("Thread0, s:%d\n",s);
        
        orden = 1;

        interest[0] = 0;
    }
    return NULL;
}

void* fthread_1(void *v){
    int i;
    for (i = 0; i < 4; i++){
        interest[1] = 1; // indica interes
        sleep(2);
        while (interest[0]) // mientras la otra thread ejecuta
        if(orden != 1){
            interest[1] = 0;
            while (orden != 1); // verificar orden
            interest[1] = 1;
        }    
        
        s = 1;
        printf("Thread1, s:%d\n",s);
        
        orden = 0;

        interest[1] = 0;
        sleep(1);
    }
    return NULL;
}

int main(){
    pthread_t thread_0, thread_1;

    pthread_create(&thread_0,NULL,fthread_0,NULL);
    pthread_create(&thread_1,NULL,fthread_1,NULL);

    pthread_join(thread_0,NULL);
    pthread_join(thread_1,NULL);
    
    return EXIT_SUCCESS;
}