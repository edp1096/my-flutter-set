package main // import "sdk-lic"

import (
	"bufio"
	"io"
	"os"
	"os/exec"
)

func main() {
	cwd, _ := os.Getwd()
	sdkRoot := cwd + `\sdk`
	cmd := exec.Command("cmd", "/C", "sdkmanager.bat", "--sdk_root="+sdkRoot, "--licenses")

	stdin, err := cmd.StdinPipe()
	if err != nil {
		panic(err)
	}

	stdout, err := cmd.StdoutPipe()
	if err != nil {
		panic(err)
	}

	stderr, err := cmd.StderrPipe()
	if err != nil {
		panic(err)
	}

	go func() {
		defer stdin.Close()
		writer := bufio.NewWriter(stdin)
		for i := 0; i < 20; i++ {
			writer.WriteString("y\n")
			writer.Flush()
		}
	}()

	go io.Copy(os.Stdout, stdout)
	go io.Copy(os.Stderr, stderr)

	if err := cmd.Start(); err != nil {
		panic(err)
	}

	if err := cmd.Wait(); err != nil {
		panic(err)
	}
}
