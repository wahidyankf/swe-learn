from fastapi.testclient import TestClient
from src.main import app

client = TestClient(app)

def test_hello_endpoint():
    response = client.get("/api/hello")
    assert response.status_code == 200
    data = response.json()
    assert "message" in data
    assert data["message"].startswith("hello world: ")
