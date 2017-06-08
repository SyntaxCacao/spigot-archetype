#!/bin/sh

rm -rf test
mkdir test
cd test
mvn archetype:generate -DarchetypeArtifactId=spigot-archetype    \
                       -DarchetypeGroupId=de.skeletoneye.maven   \
                       -DarchetypeVersion=0.1.0-SNAPSHOT         \
                       -DartifactId=testplugin                   \
                       -DgroupId=de.skeletoneye.test             \
                       -DjavaVersion=1.8                         \
                       -DmainClass=TestMain                      \
                       -DpluginAuthor=SkeletonEye                \
                       -DpluginDescription='Little test plugin'  \
                       -DpluginName=MyTestPlugin                 \
                       -DpluginWebsite=https://www.spigotmc.org  \
                       -DspigotVersion=1.8.8-R0.1-SNAPSHOT       \
                       -Dversion=0.0.1-SNAPSHOT
cd ..
