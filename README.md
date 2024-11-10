# Docker Buildroot

Containerized version of Buildroot.

## Example run
```
docker run --rm -ti -v ./output:/output -v ./overlay:/buildroot/overlay:ro docker-buildroot make O=/output menuconfig
```


## Notes
`.config` file is written inside the output folder.  
**Must** always be used with out-of-tree build with `make O=/outputpath`.
