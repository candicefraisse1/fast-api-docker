from typing import Union

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class PythonOutput(BaseModel):
    stdout: str
    stderror: str
    errorlevel: int


@app.get("/code/")
def read_item(code: PythonOutput):
    return {"stdout": code.stdout, "stderror": code.stderror, "error_level": code.errorlevel}

