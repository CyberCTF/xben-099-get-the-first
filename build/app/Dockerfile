# Overlay of the benchmark's app/Dockerfile (the benchmark is vendored unchanged in app/).
# What differs from upstream:
# - the COPY sources point into app/app/ (this folder is the build context);
# - the FLAG build argument defaults to this lab's fixed flag, the value upstream's Makefile passes (FLAG{sha256 of the benchmark id}), since the spec passes no build arguments;
# - upstream's compose environment values are baked in (ENV after FROM): MONGODB_URI.
# Everything else is upstream's, line for line.

FROM node:21
ENV MONGODB_URI=mongodb://mongodb:27017/getthefirst

WORKDIR /app

COPY app/app/package*.json ./

RUN npm install

COPY app/app/ .

EXPOSE 3000

ARG FLAG=FLAG{65659d9341b31a9ec25580eff18a157becbc94498ee519bbb9063b62bf43c58f}
ENV FLAG=${FLAG}  
CMD ["node", "server.js"]
