function Cep(cep) {
    this.cep = cep

    this.validate = function () {
        return new Promise((resolve, reject) => {
            if (this.cep.length === 8) {
                resolve('valid CEP!')
            } else {
                reject('invalid CEP!')
            }
        })
    }

    this.search = async function () {
        this.validate().then(() => {
            console.log('Searching CEP...\n');
            fetch(`https://viacep.com.br/ws/${this.cep}/json/`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Error: CEP not found!');
                    }
                    return response.json();
                })
                .then(data => {
                    console.log('CEP found! \n');
                    console.log(format(data));
                })
                .catch(error => {
                    console.error(error.message);
                });
        }).catch(error => {
            console.error(error);
        })
    }

    function format(data) {
        return `CEP: ${data.cep} \nAdress ${data.logradouro}, ${data.bairro} \nCity: ${data.localidade} - ${data.uf}`
    }
}

module.exports = Cep;