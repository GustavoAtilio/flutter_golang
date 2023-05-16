# flutter_golang

Projeto Flutter para interpolação de código Golang

## Build projeto Golang Linux

`CGO_ENABLED=1 go build -buildmode=c-shared -o lib/shared/hello_golang/build/hello.so lib/shared/hello_golang/main.go`

## Gerar código dart

`flutter pub run ffigen`

### Test no Linux OK
