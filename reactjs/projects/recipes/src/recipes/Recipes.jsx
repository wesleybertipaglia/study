import React from 'react'
import Recipe from './Recipe'
import RecipeTitle from './RecipeTitle'
import RecipeIngredients from './RecipeIngredients'
import RecipeSteps from './RecipeSteps'
import './Recipes.css'

const recipes = {}
recipes[0] = new Recipe(
    'Mashed potatoes', 3.8, 20, 
        [
            '3 potatoes, cut into 1/2" pieces',
            '4 Tbsp butter',
            '1/8 cup heavy cream',
            'Salt',
            'Pepper',
    ],
        [
            'Add cut potatoes to a pot of heavily salted water',
            'Bring pot to a boil',
            'Boil the potatoes until fork tender, about 15-20 minutes',
            'Strain the potatoes',
            'Return potatoes to pot',
            'Add butter, cream, salt, and pepper to taste',
            'Mash potatoes',
            'Reseason and add butter and cream as desired'
    ],
)
recipes[1] = new Recipe(
    'Banana Banana Bread', 4.6, 28, 
        [
            'Flour: All-purpose flour gives the banana bread structure',
            'Baking soda: Baking soda acts as a leavener, which means it helps the banana bread rise',
            "Salt: A pinch of salt enhances the overall flavor, but it won't make the loaf taste salty",
            'Butter: A stick of butter lends richness, moisture, and irresistible flavor',
            'Brown sugar: Brown sugar sweetens things up and adds a hint of warmth',
    ],
        [
            'Combine the dry ingredients in one bowl',
            'Beat the butter and sugar in another bowl. Add the eggs and mashed bananas',
            'Add the wet mixture to the dry mixture',
            'Pour the batter into a loaf pan and bake in a preheated oven'
    ]
)
recipes[2] = new Recipe(
    'Maple Cupcakes', 4.0, 15, 
        [
            '1 cup maple syrup', 
            '5 tablespoons margarine', 
            '1 large egg', 
            '1 ½ cups all-purpose flour',
            '½ cup whole wheat flour',
            '2 ¼ teaspoons baking powder',
            '½ teaspoon ground nutmeg'  ,
            '½ teaspoon salt',
            '¼ teaspoon ground ginger',
            '½ cup milk'
    ],
        [
            'Preheat the oven to 350 degrees F (175 degrees C)',
            'Grease two 12-cup muffin tins',
            'Beat maple syrup and margarine together in a large bowl until well mixed and creamy',
            'Mix in egg until combined',
            'Combine all-purpose and whole wheat flours, baking powder, nutmeg, salt, and ginger in a small bowl',
            'Add dry ingredients to the wet ingredients in batches, alternating with the milk, beating batter briefly after each addition',
            'Fill the prepared muffin cups 3/4 full with batter',
            'Bake in the preheated oven until a toothpick inserted in the centers comes out clean, 20 to 30 minutes'
    ]
)

export default function Recipes() {
    return (
        <div className="recipes">
            {
            Object.values(recipes).map((e => {
                return <details>
                    <RecipeTitle title={e.title} rating={e.rating} reviews={e.reviews} />
            
                    <div className='col g-24'>
                        <div className='col g-8'>
                            <h3>Ingredients</h3>
                            <ul className='ls-none'>
                                <RecipeIngredients ingredients={e.ingredients} />
                            </ul>
                        </div>
            
                        <div className='col g-8'>
                            <h3>Steps</h3>
                            <RecipeSteps steps={e.steps} />
                        </div>
                    </div>
                </details>
            }))
            }
        </div>
    )
}