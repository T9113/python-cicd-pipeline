import pytest
from app import app

def test_home_page():
    # Construct an ephemeral Flask test client context
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200