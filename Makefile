fmt:
	gofmt -d -l -w ./...

vet:
	go vet ./...

err:
	errcheck -blank ./...

static:
	staticcheck ./...

lint:
	golangci-lint run -E gofumpt ./...

fix:
	golangci-lint run --disable-all -E gofumpt --fix ./...

mod:
	go mod tidy

test:
	go test -bench=.