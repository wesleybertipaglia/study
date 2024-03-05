const rl = require('../utils/Readline');
const Cep = require('./Cep');

async function main() {
    async function askForCep() {
        const cepInput = await new Promise((resolve) => {
            rl.question('Type a CEP: ', (input) => {
                resolve(input);
            });
        });

        const cepInstance = new Cep(cepInput);
        await cepInstance.search();
        askToSearchAgain();
    }

    async function askToSearchAgain() {
        const answer = await new Promise((resolve) => {
            rl.question('Do you want to search for another CEP? (y/n): ', (input) => {
                resolve(input.toLowerCase());
            });
        });

        if (answer === 'y') {
            askForCep();
        } else {
            rl.close();
        }
    }

    askForCep();
}

main();
