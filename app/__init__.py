from flask import Flask


def create_app():
    app = Flask(__name__)

    @app.route("/")
    def home():
        return "<h1 style='background: linear-gradient(45deg, #FEDCBA, #ABCDEF); color: black;'>6 7</h1>"

    return app
