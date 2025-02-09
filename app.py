from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    result = None
    if request.method == 'POST':
        num1 = request.form['num1']
        num2 = request.form['num2']
        try:
            num1 = float(num1)
            num2 = float(num2)
            result = num1 + num2
        except ValueError:
            result = "Yang bener dong input nya :("

    return render_template('index.html', result=result)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

