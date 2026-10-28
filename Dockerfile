# Nutzen von Ubuntu als stabiles Basis-System
FROM ubuntu:22.04

# Installieren des Webservers (Nginx)
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# Kopieren des Spiels in das Standard-Verzeichnis von Ubuntu-Nginx
COPY index.html /var/www/html/index.html

# Port für das Web freigeben
EXPOSE 80

# Nginx explizit so starten, dass der Hoster den Prozess tracken kann
CMD ["nginx", "-g", "daemon off;"]
