#!/bin/bash

echo Versions:

values=(
spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
spigot-1.9.4-R0.1-SNAPSHOT-latest.jar
spigot-1.10.2-R0.1-SNAPSHOT-latest.jar
spigot-1.11.2.jar
spigot-1.12.2.jar
spigot-1.13.2.jar
spigot-1.14.4.jar
spigot-1.15.2.jar
spigot-1.16.5.jar
#spigot-1.17.1.jar
#spigot-1.18.2.jar
#spigot-1.19.4.jar
#spigot-1.20.1.jar
)

echo 1.8.8  [0]
echo 1.9.4  [1]
echo 1.10.2 [2]
echo 1.11.2 [3]
echo 1.12.2 [4]
echo 1.13.2 [5]
echo 1.14.4 [6]
echo 1.15.2 [7]
echo 1.16.5 [8]
#echo 1.17.1 [9]
#echo 1.18.2 [10]
#echo 1.19.4 [11]
#echo 1.20.1 [12]

echo Please enter the starting version [0-6]:
read -r starting

echo Please enter the ending version [0-6]:
read -r ending

pushd $(pwd)
cd server

echo eula=true>eula.txt

rm -rf world world_nether world_the_end

pushd $(pwd)
cd plugins
wget -nc https://github.com/cswhite2000/ChunkPruner/releases/download/prunechunks/ChunkPruner.jar
popd

for i in $(seq $starting $ending); do
  wget -nc https://cdn.getbukkit.org/spigot/${values[$i]}
    /opt/homebrew/opt/openjdk@11/bin/java -jar ${values[$i]}
done

popd

