import (
	"fmt"

	"github.com/Shopify/go-lua"
)


func main() {
	// Create a new Lua state
	l := lua.NewState()
	// Load the standard libraries
	lua.OpenLibraries(l)
	
	// Load and run a Lua script
	if err := lua.DoFile(l, "script.lua"); err != nil {
		fmt.Println(err)
		return
	}
}