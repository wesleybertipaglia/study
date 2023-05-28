import React from 'react'
import './RecipeSteps'

export default function Steps(props) {
    const steps = props.steps.map((e) => {
        return <div>
            <input type="checkbox" name={e} /> {' '}
            <label htmlFor={e}>{e}</label>
        </div>
    })

    return steps;
}
