FROM openjdk

ADD . /c/Users/bst83356/Demo_2/Jenkinsfile

COPY . D:\Dock

WORKDIR D:\Dock

RUN javac echo.java

RUN java echo

CMD [ "echo" , "Welcome to this world" ]
