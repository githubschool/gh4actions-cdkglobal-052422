FROM ghcr.io/REPLACE_WITH_YOUR_ORG_NAME/REPLACE_WITH_YOUR_IMAGE_NAME:REPLACE_WITH_YOUR_IMAGE_VERSION

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . .

CMD ["npm","test"]