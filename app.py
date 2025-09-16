from flask import Flask

app = Flask(__name__)  # Create a Flask application instance

@app.route("/")
def home():
    return "Hello World"  # Route "/" returns this string

if __name__=="__main__":
    app.run(host="0.0.0.0", port=5000)  # Run the app on all network interfaces
