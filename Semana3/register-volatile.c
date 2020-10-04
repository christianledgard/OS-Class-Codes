volatile int j;
int k;

int main(){
    register int i;
    
    for (i = 20; i < 200; i++);

    for (j = 20; j < 300; j++);

    for (k = 20; k < 200; k++);
}