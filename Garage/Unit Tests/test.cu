#include <stdio.h>

__global__ void cuda_hello(){
    printf("Hello from CUDA!\n");
}

int main() {
    cuda_hello<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}
