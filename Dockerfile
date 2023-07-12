FROM jupyter/minimal-notebook

WORKDIR /code

COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

EXPOSE 8888

CMD [ "jupyter", "lab", "--ip=0.0.0.0", "--no-browser" ,"--allow-root"]