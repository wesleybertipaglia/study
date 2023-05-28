import React from 'react';

export default function Ingredients(props) {
    const ingredients = props.ingredients.map((e) => {
        return <li>{e}</li>;
    })

    return ingredients;
}
