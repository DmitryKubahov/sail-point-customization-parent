#!/bin/sh

identity_version=7.3.p2
identity_improved_version=0.1.2

#--------------------------------------------------------------- Identity improved ---------------------------------------------------------------
echo "Start adding local maven identity improved dependencies version:"$identity_improved_version

echo "Adding sail-point-annotation-"$identity_improved_version".jar"
mvn install:install-file -DgroupId=com.sailpoint -Dversion=$identity_improved_version -Dpackaging=jar -DartifactId=sail-point-annotation -Dfile=sail-point-annotation-"$identity_improved_version".jar

echo "Adding sail-point-annotation-processor-"$identity_improved_version".jar"
mvn install:install-file -DgroupId=com.sailpoint -Dversion=$identity_improved_version -Dpackaging=jar -DartifactId=sail-point-annotation-processor -Dfile=sail-point-annotation-processor-"$identity_improved_version".jar

echo "Adding sail-point-improved-"$identity_improved_version".jar"
mvn install:install-file -DgroupId=com.sailpoint -Dversion=$identity_improved_version -Dpackaging=jar -DartifactId=sail-point-improved -Dfile=sail-point-improved-"$identity_improved_version".jar

echo "Adding sail-point-annotation-parent-"$identity_improved_version".pom"
mvn install:install-file -DgroupId=com.sailpoint -Dversion=$identity_improved_version -Dpackaging=pom -DartifactId=sail-point-annotation-processor -Dfile=sail-point-annotation-parent-"$identity_improved_version".pom

echo "Adding sail-point-improved-parent-"$identity_improved_version".pom"
mvn install:install-file -DgroupId=com.sailpoint -Dversion=$identity_improved_version -Dpackaging=pom -DartifactId=sail-point-improved-parent -Dfile=sail-point-improved-parent-"$identity_improved_version".pom

#--------------------------------------------------------------- IdentityIQ ---------------------------------------------------------------
echo "Start adding local maven identity dependencies version:"$identity_version

echo "Adding identity.jar"
mvn install:install-file -DgroupId=com.sailpoint -Dversion=$identity_version -Dpackaging=jar -DartifactId=identityiq -Dfile=identityiq.jar

echo "Adding connector-bundle.jar"
mvn install:install-file -DgroupId=com.sailpoint -Dversion=$identity_version -Dpackaging=jar -DartifactId=connector-bundle -Dfile=connector-bundle.jar
