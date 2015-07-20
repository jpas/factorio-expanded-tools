require 'lib.tool'
require 'lib.recipe'

name = 'jackhammer'

data:extend({
    tool(name, 2),
    recipe(name, {
        { 'steel-plate', 10 },
        { 'electronic-circuit', 5 },
        { 'engine-unit', 1 }
    })
})
