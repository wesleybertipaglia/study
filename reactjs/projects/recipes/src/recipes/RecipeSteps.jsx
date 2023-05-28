import React from 'react'
import './RecipeSteps'

export default function Steps(props) {
    const steps = props.steps.map((e) => {
        return <div>
            <input type="checkbox" name={e.name} /> {' '}
            <label htmlFor={e.name}>{e.name}</label>
        </div>
    })

    return steps;
}
