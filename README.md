# Aks ChatGPT about PDF content (and hopefully like the results)

This little application takes PDF files as input. The files are parsed and the texts are extracted.
Together with a prompt you can pass the texts to the OpenAI Api which generates a response.

## User manual

#### 1. Clone the required files from this GitHub link and place them in to your project dir
> GitHub Link goes here

#### 2. Insert YOUR OpenAI Api Key in the Docker-Compose file here
> OPENAI_API_KEY=<*place your api key here and delete it after building*>

#### 3. From your project dir run
> docker-compose up
(It might happen that you need to put *sudo* at the beginning depending on your user configuration.)

#### 4. Docker builds the image and starts a container
You will notice that the first container start is in "attached" mode.
Take the link which points to your localhost and contains the security tocken and place it in a browser. It will looke something like this:
> Her goese the example link

Congratulations! Your application is up and running!

#### 5. Place your PDFs in the dir *"src/files"*
Since you cannot push empty folders to git, create a new one. 
Make sure that you only have PDFs in this folder. There is no exeption handling for errors at the moment. Other file types will throw an error.

#### 6. Run all cells
The Jupyter Notebook will pull the files and sequential pass them to the OpenAI Api. There is no waiting time added, so I don't know if the Api will throw an error if you have too many request per second.
(A look in the Api reference might help here.)

#### 7. Stop the container
After you finish playing around run:
> docker stop pdf-chatGPT
This will shutdown your container but persist all changes you made.

#### 8. Restart the container
To restart you container run:
> docker start pdf-chatGPT -a

It is important that you start the container in "attached" mode (*-a*).This way you will be able to retrieve the link with the new security token.


## 9. Use at you own risk!
The author of this application does not take any responsiblity for damage of any kind resulting from usage of this application.
