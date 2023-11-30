from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    html_content = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Hello World</title>
        <style>
            /* Center the heading */
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            h1 {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    </html>
    """
    return html_content

if __name__ == '__main__':
    app.run(debug=True)
