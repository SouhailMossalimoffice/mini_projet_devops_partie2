# Utiliser l'image de base Python 3.8-buster
FROM python:3.8-buster

# Définir le mainteneur
LABEL maintainer="Souhail Mossalim <mossalim.s.e@gmail.com>"

# Définir le dossier de travail
WORKDIR /

# Copier les fichiers nécessaires
COPY student_age.py /
COPY requirements.txt /

# Installer les dépendances
RUN apt update -y && apt install -y python3-dev libsasl2-dev libldap2-dev libssl-dev
RUN pip install --no-cache-dir -r /requirements.txt

# Exposer le port de l'API
EXPOSE 5000

# Définir la commande de démarrage
CMD ["python3", "./student_age.py"]
