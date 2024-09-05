FROM python:3.12-slim

RUN pip install --no-cache-dir notebook jupyterlab

WORKDIR /workspace

COPY . /workspace/

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
