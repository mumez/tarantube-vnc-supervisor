# tarantube-pharo-vnc-supervisor

A Docker image for running Tarantube with VNC and supervisord.
It is an exmaple of how to customize 'pharo-vnc-supervisor' Docker image.

## Usages

- Run the container: `bash run.sh`
- Open your web browser and access: http://127.0.0.1:6901/?password=vncpassword
- Connect to existing tarantool via [Tarantube](https://github.com/mumez/Tarantube) classes (this container does not include tarantool itself).