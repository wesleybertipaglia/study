import React, { useEffect, useState } from 'react'
import './index.css'
import Recipes from './recipes/Recipes'

function App() {
    return (
        <section className='w-100'>
            <div className="sect-content">
                <div className="header">
                    <span className="logo"></span>
                    <h1>Recipe Manager</h1>
                </div>
                <Recipes />
            </div>
        </section>
    )
}

export default App;