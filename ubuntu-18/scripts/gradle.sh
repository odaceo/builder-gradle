#!/bin/bash

# This install script is intended to install Gradle.
#
# Environment variables:
# - GRADLE_VERSION: the version to install

# Downloading Gradle
wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"

# Installing Gradle
unzip gradle.zip
rm gradle.zip
mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"
ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle

# Print the installed Gradle version
gradle --version
