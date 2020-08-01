//
// Created by harshvardhanchandirasekar on 8/1/20.
//

#ifndef CDTS_DEVICEPROPERTIES_CUH
#define CDTS_DEVICEPROPERTIES_CUH
#include<vector>
#include<iostream>
#include<core/errorAndDeviceProps/errorHandler.cuh>
std::vector<size_t> DeviceProp(cudaDeviceProp deviceProp)
{
    std::vector<size_t> properties;
    std::cout<<"Detected Device"<<deviceProp.name <<std::endl;
    properties.push_back(deviceProp.totalGlobalMem);
    properties.push_back(deviceProp.multiProcessorCount);
    return properties;
}

std::vector<std::vector<size_t>> devices()
{
    std::vector<std::vector<size_t>> deviceProperties;
    std::vector<size_t> temp;
    int deviceCount;
    CudaSafeCall(cudaGetDeviceCount(&deviceCount));
    for(int i =0;i<deviceCount;i++)
    {
        cudaDeviceProp devProp;
        temp = DeviceProp(devProp);
        deviceProperties.push_back(temp);
        temp.clear();
    }
    return deviceProperties;

}

#endif //CDTS_DEVICEPROPERTIES_CUH
