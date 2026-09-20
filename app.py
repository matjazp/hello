from flask import Flask

import socket

app = Flask(__name__)

hostname = socket.gethostname()


@app.route('/')
def hello():
    return "Hello from version v1 executed on {}\n".format(hostname)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
