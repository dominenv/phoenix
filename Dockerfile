FROM elixir:1.3.4

ENV DEBIAN_FRONTEND=noninteractive

ARG USER_NAME
ARG USER_ID

RUN adduser ${USER_NAME} --uid ${USER_ID} --ingroup sudo --disabled-password --gecos ''

# Install hex
RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install NodeJS 6.x and the NPM
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs
RUN apt-get install -y -q inotify-tools

# Install Phoenix
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN cp -r /root/.mix/ /home/${USER_NAME}/.mix/
RUN chown -R ${USER_NAME} /home/${USER_NAME}/.mix/

# Set /app as workdir
WORKDIR /app
