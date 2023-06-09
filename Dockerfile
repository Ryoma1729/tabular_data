FROM python:3.9.16

ENV PYTHONPATH "${PYTHONPATH}:/workspace"
WORKDIR /workspace
# Install Zsh
RUN apt-get update && apt-get install -y zsh

# poetry
ENV POETRY_HOME=/opt/poetry
RUN curl -sSL https://install.python-poetry.org/ | python - && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false
COPY pyproject.toml .
RUN poetry install

COPY .zshrc /root/
CMD ["/bin/zsh"]
