FROM python:3.6-slim

WORKDIR /app

RUN pip install Flask

# Copia arquivos de um local na imagem do Docker. (src, destination, URL(download para dentro da imagem), extrair arquivo tar - do tipo catálogo, tem vários arquivos compactados), tudo isso vai estar dentro do container.
#ADD . /app

# Copia arquivos de um arquivo ou diretório local do host na imagem do Docker. (só src e destination), tudo isso vai estar dentro do container.
COPY . /app

ENTRYPOINT ["python"]

CMD ["app.py"]
