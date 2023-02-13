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

return value`)

keys := []string{"my_counter"}
values := []interface{}{+1}
num, err := incrBy.Run(ctx, rdb, keys, values...).Int()

local result = redis.pcall("rename", "foo", "bar")
if type(result) == 'table' and result.err then
  redis.log(redis.LOG_NOTICE, "rename failed", result.err)
end