java projects build steps

mkdir -p myprojets/java/firstJava                 // create java projects directory
cd myprojets/java/firstJava

mkdir src bin                                     // make the working directory
cd src
mkdir -p com/example/

cd com/example                                    // edit the source files    
vi First.java
vi Utils.java
cd ../../../

find ./src -name *.java | xargs javac -d ./bin    // compile the project

jar cvfe Fisrt.jar com.example.First -C bin .     // package First project

java -jar Fisrt.jar                               // run the First project
