FROM lukechannings/deno:latest

EXPOSE 3000

WORKDIR /app

COPY . .
RUN deno cache main.ts

CMD ["run", "--allow-read", "--allow-write", "--allow-env", "--allow-net", "main.ts"]