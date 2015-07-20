require 'lib.tool'
require 'lib.recipe'

name = 'laser-drill'

data:extend({
    tool(name, 3, 'laser'),
    recipe(name, {
        { 'steel-plate', 10 },
        { 'advanced-circuit', 5 },
        { 'battery', 5 }
    })
})
