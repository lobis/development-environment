# CLion Toolchain

Build a `Dockerfile` to allow use as a toolchain in Jetbrains' `CLion` IDE, following this [instructions](https://www.jetbrains.com/help/clion/clion-toolchains-in-docker.html) and the [sample Dockerfile](https://github.com/JetBrains/clion-remote/blob/master/Dockerfile.remote-cpp-env).

# Example build and push

```
CXX_STANDARD=14
ROOT_VERSION=v6-25-01
GEANT4_VERSION=v10.7.1

docker build --build-arg CXX_STANDARD=$CXX_STANDARD --build-arg ROOT_VERSION=$ROOT_VERSION --build-arg GEANT4_VERSION=$GEANT4_VERSION -t lobis/root-geant4-garfieldpp-clion:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} .

docker push lobis/root-geant4-garfieldpp-clion:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION}
```

The image will be pushed to [https://hub.docker.com/r/lobis/root-geant4-garfieldpp-clion](https://hub.docker.com/r/lobis/root-geant4-garfieldpp-clion).
