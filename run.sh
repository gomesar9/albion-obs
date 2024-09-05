#!/bin/bash

imageName='albion-obs'
imageTag='dev'
image="${imageName}:${imageTag}"

echo 'Calma felipera, ta buildando já..'
if ! docker build -t "$image" . >/dev/null 2>&1; then
  echo 'É, deu ruim..'
  exit 1
fi

echo 'Agora vamo rodar aqui'
echo 'Cria um novo Source no OBS e aponta pra "http://localhost:8000/"'
docker run -p 8000:8000 "$image"
