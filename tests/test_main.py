"""Test the `main` module."""
from template_demo import say_hello


def test_say_hello():
    """Test the `say_hello` function."""
    assert say_hello() == "Hello World!"
