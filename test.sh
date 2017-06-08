#!/bin/sh

rm -rf test
mkdir test
cd test
mvn archetype:generate -DarchetypeGroupId=de.skeletoneye.maven   \
                       -DarchetypeArtifactId=spigot-archetype    \
                       -DarchetypeVersion=0.1.0-SNAPSHOT         \
                       -DgroupId=de.skeletoneye.test             \
                       -DartifactId=testplugin                   \
                       -Dversion=0.0.1-SNAPSHOT                  \
                       -DpluginAuthor=SkeletonEye                \
                       -DpluginName=MyTestPlugin                 \
                       -DpluginDescription='Little test plugin'  \
                       -DpluginWebsite=https://www.spigotmc.org  \
                       -DmainClass=TestMain                      \
                       -DspigotVersion=1.8.8-R0.1-SNAPSHOT
cd ..
