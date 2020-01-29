# simple-s2i-nginx-image-override

A docker/podman build to be used against the rhel8 nginx image base.  
Add content and a customized nginx.conf to the image without going via the s2i path.

Uses the underlying `/usr/libexec/s2i/run` to run the container.

```
podman build . -t quay.io/something/simple-s2i-nginx-override:1
```
