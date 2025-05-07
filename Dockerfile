FROM nginx:latest

RUN sed -i 's/nginx/ salut les copains/g' /usr/share/nginx/html/index.html

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
