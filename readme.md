## Pré-requisitos

- Python 3.8 ou mais atualizado
- Docker (opcional)

## Instalação

1. **Clone o Repositório**:
```bash
   git clone <https://github.com/VslVictor7/Institutional-game-web.git>

   cd Institutional-game-web
```

2. **Criar Ambiente Virtual** (venv):

```bash
python -m venv venv
```

3. **Ativar Ambiente Virtual:**:
```bash
source .venv/scripts/activate
```

4. **Atualizar pip**
```bash
python -m pip install --upgrade pip
```

5. **Instalar requirements.txt**
```bash
pip install -r requirements.txt
```

6. **Criar arquivo .env e copiar tudo dentro de ".env.example" em ".env"**

## Rodar o Django

1. **Fazer migrações**
```bash
py manage.py makemigrations
```

2. **Migrar**
```bash
py manage.py migrate
```

3. **Rodar servidor**
```bash
py manage.py runserver
```

## (Opcional) Rodar projeto com Docker Compose

- Certifique de estar no mesmo diretório do Dockerfile e docker-compose.yml

- Após a verificação, rode:
```bash
docker-compose up --build
```