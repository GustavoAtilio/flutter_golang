package main

import "C"
import "fmt"

//export hello
func hello(name *C.char) *C.char{
	nameString := C.GoString(name)
	return C.CString(fmt.Sprint("Hello ", nameString))
}

func main() {}