CC=cargo
FMT=fmt

ARGS=
TEST_LOG_LEVEL=

default: fmt
	$(CC) build

fmt:
	$(CC) fmt --all

check:
	$(CC) test --all -- --show-output

clean:
	$(CC) clean


