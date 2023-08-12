# Load Testing a Rust Web App with Locust

This project performs load testing on a simple Rust web application using Locust.

## About 

The web app is a basic Rust program using Actix web. It has a few endpoints like:

- `/` - Home page  
- `/users` - List users
- `/login` - Login form

Locust is used to simulate users and generate test loads on the app.

## Getting Started

### Dependencies

- Rust
- Locust (`pip install locust`)

### Running Locust

Start the web app:

In another terminal, run Locust:


This will start the Locust web interface on http://localhost:8089

You can define users, spawn rate, test scenarios etc in the web UI or directly in `locustfile.py`.

## Test Scenarios

Some example test scenarios:

- Home page load  
- View user profiles
- Login with valid and invalid credentials

See `locustfile.py` for implementation details.

## Results 

Locust provides real-time graphs and stats for key metrics like requests/sec, response times, number of users etc.

These can be used to analyze performance and set benchmarks.

## Contributing

Please feel free to open issues and pull requests!

## License

MIT