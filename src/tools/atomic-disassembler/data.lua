require 'lib.tool'
require 'lib.recipe'

name = 'atomic-disassembler'

data:extend({
    tool(name, 4, 'laser'),
    recipe(name, {
        { 'steel-plate', 20 },
        { 'battery', 10 },
        { 'processing-unit', 5 },
        { 'alien-artifact', 10 }
    })
})
