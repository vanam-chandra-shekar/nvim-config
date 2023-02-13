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

var incrBy = redis.NewScript(`
local key = KEYS[1]
local change = ARGV[1]

local value = redis.call("GET", key)
if not value then
  value = 0
end

value = value + change
redis.call("SET", key, value)

return value
`)