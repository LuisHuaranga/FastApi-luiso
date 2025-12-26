from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {
        "status": "online",
        "mensaje": "VIVA LA el puero 4000",
        "entorno": "Docker Engine en NICK"
    }