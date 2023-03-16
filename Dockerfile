FROM lukechannings/deno:latest

EXPOSE 3000

WORKDIR /app

COPY . .
RUN deno cache --import-map ./import_map.json main.ts

CMD ["run", "--allow-read", "--allow-write", "--allow-env", "--allow-net", "--import-map", "import_map.json", "main.ts"]
