FROM node:10-alpine

USER node

WORKDIR /home/node/repo

# installs now CLI globally via yarn
RUN yarn global add vercel

# copies entrypoint script
COPY --chown=node:node entrypoint.sh /usr/local/bin
# give it execution permission
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
