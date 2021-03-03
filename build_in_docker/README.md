# 使用说明
我需要nginx在docker中运行，并加载我需要的模块。所以要使用和nginx基础镜像一样的系统来编译nginx_module

基于此需求，做了这个扩展，使用方式如下：

1. 在build_in_docker目录中使用**build_docker_image.sh**来构建我们的build用的基础镜像，包含特定版本的nginx源码和编译组件。其中需要注意的是编译nginx module时需要使用跟编译当前nginx一样的参数，否则加载dynamic_module的时候就会报：*module "/etc/nginx/modules/ngx_http_dyups_module.so" is not binary compatible*
2. 在build_in_docker目录中使用**build_module_in_docker.sh**来编译module， 最终的.so输出在output下
3. 自行配置nginx.conf 加载动态模块

