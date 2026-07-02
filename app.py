from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "<h1>Production Deployment Successful!</h1><p>Live via AWS CodePipeline, CodeBuild, & CodeDeploy Free Tier.</p>"

if __name__ == '__main__':
    # Run globally on standard web port 80
    app.run(host='0.0.0.0', port=80)