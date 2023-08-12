install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version 			#rust compiler
	cargo --version 			#rust package manager
	rustfmt --version			#rust code formatter
	rustup --version			#rust toolchain manager
	clippy-driver --version		#rust linter

format:
	cargo fmt 

lint:
	cargo clippy 

test:
	cargo test --quiet

run:
	cargo run

release:
	cargo build --release

all: format lint test run
