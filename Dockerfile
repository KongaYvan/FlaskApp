# 1. Choisir une image Python officielle
FROM python:3.10-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier le fichier contenant les dépendances
# (requirements.txt doit contenir au minimum : Flask)
COPY requirements.txt .

# 4. Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copier tout le code de votre projet dans le conteneur
COPY . .

# 6. Indiquer que l'application écoute sur le port 5000
EXPOSE 5000

# 7. Commande pour lancer l'application Flask
CMD ["python", "app.py"]
