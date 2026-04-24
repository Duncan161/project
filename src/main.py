from fastapi import FastAPI
app = FastAPI()

@app.get("/metrics")
def metrics():
    import subprocess
    commits = subprocess.check_output(["git", "rev-list", "--count", "HEAD"]).decode().strip()
    return {"total_commits": commits}
