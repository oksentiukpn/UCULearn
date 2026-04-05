from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    return "<h1 style='background: linear-gradient(45deg, #FEDCBA, #ABCDEF); color: black;'>6 7</h1>"


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
