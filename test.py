import unittest
from app import app

class FlaskTest(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

    def test_hello_world_page(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'<h1>Hello World!</h1>', response.data)
        self.assertIn(b'text-align: center;', response.data) # Ensuring CSS is present

if __name__ == '__main__':
    unittest.main()
