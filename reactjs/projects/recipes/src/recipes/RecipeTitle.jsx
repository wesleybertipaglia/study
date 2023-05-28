import React from 'react'

function RecipeTitle(props) {
    return (
        <summary className='d-flex ai-ce'>
            <div className={'d-flex jc-sb flex-1'}>
                <span>{props.title}</span>
                <span className={'fs-14 ' + (props.rating <= 3.5 ? 'red' : 'green')}>
                    {props.rating} from {props.reviews} reviews
                </span>
            </div>
        </summary>
    )
}

export default RecipeTitle;