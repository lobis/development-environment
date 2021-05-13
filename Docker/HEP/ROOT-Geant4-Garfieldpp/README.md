# ROOT + Geant4 + Garfieldpp

This `Dockerfile` installs [`ROOT`](https://github.com/root-project/root), [`Geant4`](https://github.com/Geant4/geant4) and [`Garfieldpp`](https://gitlab.cern.ch/garfield/garfieldpp).

The user can define the following tags:

* `CXX_STANDARD`: Defines the C++ standard (11, 14, 17, ...) to compile with. It affects all projects (ROOT, Geant4 and Garfieldpp).
  
* `ROOT_VERSION`: Defines the ROOT version, taken from the tags in the ROOT [GitHub](https://github.com/root-project/root).
  
* `GEANT4_VERSION`: Defines the Geant4 version, taken from the tags in the Geant4 [GitHub](https://github.com/Geant4/geant4).

* `GARFIELDPP_VERSION`: Defines the Garfieldpp version, taken from the tags in the Garfieldpp [GitLab](https://gitlab.cern.ch/garfield/garfieldpp).

## Tags

The tagging pattern is the following:

`lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION}`

## Example build and push

```
CXX_STANDARD=14
ROOT_VERSION=v6-25-01
GEANT4_VERSION=v10.7.1

docker build --build-arg CXX_STANDARD=$CXX_STANDARD --build-arg ROOT_VERSION=$ROOT_VERSION --build-arg GEANT4_VERSION=$GEANT4_VERSION -t lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} .

docker push lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION}
```

The image will be pushed to [https://hub.docker.com/r/lobis/root-geant4-garfieldpp](https://hub.docker.com/r/lobis/root-geant4-garfieldpp).
