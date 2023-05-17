import React from 'react';

function ReceipeTitle(props) {
    const title = "Receipe Test";
    return (
        <details>
            <summary>{props.title}</summary>
            <p>{props.receipe}</p>
        </details>
    )
}

export default ReceipeTitle;