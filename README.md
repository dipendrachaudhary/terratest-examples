# Terratest Examples

## Usage

To configure dependencies, run:
```
cd test
go mod init "<MODULE_NAME>"
```
Where `<MODULE_NAME>` is the name of your module, typically in the format `github.com/<YOUR_USERNAME>/<YOUR_REPO_NAME>`

To run the tests:
```
cd test
go test -v
```

To set the timeout, run:
```
go test -v -timeout <timeout>

// Example:
go test -v -timeout 30m
```

To run the test calling the func and with timeout, run:
```
go test -v -run <func name> -timeout <timeout>

// Example:
go test -v -run TestTerraformAwsHelloWorldExample -timeout 30m
```
