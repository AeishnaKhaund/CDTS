//
// Created by harshvardhanchandirasekar on 8/1/20.
//
#ifndef CDTS_ERRORHANDLER_CUH
#define CDTS_ERRORHANDLER_CUH
#include<iostream>
#define CUDA_ERROR_CHECK

#define CudaSafeCall(err) __cudaSafeCall(err,__FILE__,__LINE__)
#define CudaCheckError() __cudaCheckError(__FILE__,__LINE__)

inline void __cudaSafeCall(cudaError err,const char* file,const int line)
{
#ifdef CUDA_ERROR_CHECK
    if(cudaSuccess != err)
    {
        std::cout<<"cudaSafeCall() failed at"<<file<<":"<<line<<":"<<cudaGetErrorString(err)<<std::endl;
        exit(-1);
    }
#endif
    return;
}

inline void __cudaCheckError(const char *file,const int line)
{
#ifdef CUDA_ERROR_CHECK
    cudaError err = cudaGetLastError();
    if(cudaSuccess != err)
    {
        std::cout<<"cudaCheckError() failed at "<<file<<":"<<line<<":"<<cudaGetErrorString(err)<<std::endl;
        exit(-1);
    }
#endif
    return;
}
#endif //CDTS_ERRORHANDLER_CUH
