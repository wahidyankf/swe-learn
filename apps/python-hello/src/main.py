from fastapi import FastAPI
from python_hello_libs import get_current_date_time

app = FastAPI()

@app.get("/api/hello")
async def hello():
    return {"message": f"hello world: {get_current_date_time()}"}
