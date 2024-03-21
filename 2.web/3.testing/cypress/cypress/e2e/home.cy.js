describe('home page', () => {
  it('should display the home page', () => {
    cy.visit('http://localhost:5173/')
    cy.get('h1').should('contain', 'Vite + React')
      .should('have.text', 'Vite + React')
  })

  it('should display the vite logo', () => {
    cy.visit('http://localhost:5173/')
    cy.get('.logo').should('have.attr', 'src', '/src/assets/vite.svg')
  })

  it('should display the react logo', () => {
    cy.visit('http://localhost:5173/')
    cy.get('.react').should('have.attr', 'alt', 'React logo')
  })

  it('should display the counter', () => {
    cy.visit('http://localhost:5173/')
    cy.get('button').should('contain', 'count is 0')
  })

  it('should increment the counter', () => {
    cy.visit('http://localhost:5173/')
    cy.get('button').click()
    cy.get('button').should('contain', 'count is 1')
  })
})