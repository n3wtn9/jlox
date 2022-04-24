#! /bin/bash

PROJECT_HOME=$PWD

if [ $1 == "run" ]; then
   $PROJECT_HOME/gradlew run -q --console=plain
fi


if [ $1 == "gen" ]; then
    # Clear generated files
    rm -f $PROJECT_HOME/app/src/main/java/jlox/Expr.java;
    rm -f $PROJECT_HOME/app/src/main/java/jlox/Stmt.java;

    # Generate files
    cd $PROJECT_HOME/app/src/main/java;
    javac tool/GenerateAst.java
    java tool/GenerateAst $PROJECT_HOME/app/src/main/java/jlox;
fi
