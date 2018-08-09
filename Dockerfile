FROM qnib/uplain-cuda8

ARG NV_URL=http://developer.download.nvidia.com/compute/redist/cudnn
ENV NV_CUDA_VER=8.0
ENV NV_CUDNN_VER=6.0
RUN echo ">> Downloading ${NV_URL}/v${NV_CUDNN_VER}/cudnn-${NV_CUDA_VER}-linux-x64-v${NV_CUDNN_VER}.tgz" \
 && wget -qO - ${NV_URL}/v${NV_CUDNN_VER}/cudnn-${NV_CUDA_VER}-linux-x64-v${NV_CUDNN_VER}.tgz | tar xfz - -C /usr/local/cuda/ --strip-components=1
