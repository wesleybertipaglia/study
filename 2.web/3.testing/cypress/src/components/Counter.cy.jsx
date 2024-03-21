import React from 'react'
import Counter from './Counter'

describe('<Counter />', () => {
  it('renders', () => {
    // see: https://on.cypress.io/mounting-react
    cy.mount(<Counter />)
  })
})