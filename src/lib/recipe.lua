function recipe(name, ingredients)
    return {
        type = "recipe",
        name = name,
        enabled = true,
        ingredients = ingredients,
        result = name
    }
end

return recipe
