User.destroy_all
Recipe.destroy_all


lige = User.create(username: 'lige')

Recipe.create(
    user_id: lige.id,
    name: "Steamed Bok Choy",
    description: 'This is a reeealy Reeeealy REEEAALy good Bok',
    servings: 4,

)