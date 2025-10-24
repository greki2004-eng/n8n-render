# Берём официальный образ n8n
FROM n8nio/n8n:latest

# Рабочая директория для сохранения данных
WORKDIR /home/node/.n8n
VOLUME ["/home/node/.n8n"]

# Настройки окружения
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=1234
ENV N8N_ENCRYPTION_KEY=mysecretkey123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=Europe/Tel_Aviv
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Запуск n8n
ENTRYPOINT ["n8n"]
CMD ["start"]

