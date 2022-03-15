#! /bin/bash

[[ -z "$PROJECT_HOME" ]] && echo "env PROJECT_HOME empty" && exit 0;

# Clear generated files
rm ${PROJECT_HOME}/app/src/main/java/jlox/Expr.java;
rm ${PROJECT_HOME}/app/src/main/java/jlox/Stmt.java;

# Generate files
cd ${PROJECT_HOME}/app/src/main/java;
javac tool/GenerateAst.java
java tool/GenerateAst ${PROJECT_HOME}/app/src/main/java/jlox;


