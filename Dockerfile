# 1. Choisir une image Python officielle
FROM python:3.10-slim

# 2. Définir le répertoire de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers de ton projet dans le conteneur
COPY . .

# 4. Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# 5. Exposer le port sur lequel Flask écoute
EXPOSE 5000

# 6. Commande de démarrage
CMD ["python", "app.py"]
