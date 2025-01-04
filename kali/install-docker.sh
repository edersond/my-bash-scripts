#!/bin/bash
sudo rm /etc/apt/sources.list.d/docker.list
sudo apt update
sudo apt install ca-certificates curl gnupg lsb-release -y

# Remover repositórios Docker existentes

# Atualizar o sistema
sudo apt update

# Instalar dependências
sudo apt install ca-certificates curl gnupg lsb-release -y

# Baixar e executar o script de instalação do Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Adicionar seu usuário ao grupo docker
sudo usermod -aG docker $USER

# Instalar Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Verificar instalações
docker --version
docker-compose --version

# Reiniciar a sessão para aplicar as mudanças de grupo
newgrp docker
