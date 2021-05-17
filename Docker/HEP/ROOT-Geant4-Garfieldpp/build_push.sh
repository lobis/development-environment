docker system prune -a -f && \
CXX_STANDARD=17 && GEANT4_VERSION=v10.4.3 && ROOT_VERSION=v6-25-01 && docker build --no-cache --build-arg CXX_STANDARD=$CXX_STANDARD --build-arg GEANT4_VERSION=$GEANT4_VERSION --build-arg ROOT_VERSION=$ROOT_VERSION -t lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} . && docker push lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} && docker system prune -a -f  && \
CXX_STANDARD=14 && GEANT4_VERSION=v10.7.1 && ROOT_VERSION=v6-25-01 && docker build --no-cache --build-arg CXX_STANDARD=$CXX_STANDARD --build-arg GEANT4_VERSION=$GEANT4_VERSION --build-arg ROOT_VERSION=$ROOT_VERSION -t lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} . && docker push lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} && docker system prune -a -f  && \
CXX_STANDARD=17 && GEANT4_VERSION=v10.7.1 && ROOT_VERSION=v6-25-01 && docker build --no-cache --build-arg CXX_STANDARD=$CXX_STANDARD --build-arg GEANT4_VERSION=$GEANT4_VERSION --build-arg ROOT_VERSION=$ROOT_VERSION -t lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} . && docker push lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} && docker system prune -a -f  && \
CXX_STANDARD=14 && GEANT4_VERSION=v10.4.3 && ROOT_VERSION=v6-25-01 && docker build --no-cache --build-arg CXX_STANDARD=$CXX_STANDARD --build-arg GEANT4_VERSION=$GEANT4_VERSION --build-arg ROOT_VERSION=$ROOT_VERSION -t lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} . && docker push lobis/root-geant4-garfieldpp:cxx${CXX_STANDARD}_ROOT${ROOT_VERSION}_Geant4${GEANT4_VERSION} && docker system prune -a -f  && \
echo "DONE!"
