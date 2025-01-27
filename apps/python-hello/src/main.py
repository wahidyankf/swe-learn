from fastapi import FastAPI
from python_hello_libs import get_current_date_time
from typing import Dict

app = FastAPI()


@app.get("/api/hello")
async def hello() -> Dict[str, str]:
    """Hello world endpoint that returns current date and time.

    Returns:
        Dict[str, str]: A dictionary containing a Hello World message with current datetime
    """
    message = f"Hello World: {get_current_date_time()}"
    return {"message": message}
