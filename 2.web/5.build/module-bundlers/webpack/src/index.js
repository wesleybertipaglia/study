import _ from 'lodash';
import './style.scss';

function component() {
    const element = document.createElement('p');
    element.innerHTML = _.join(['Hello', 'webpack'], ' ');

    return element;
}

function component2() {
    const element = document.createElement('button');
    element.innerHTML = 'Click me!';

    element.onclick = () => {
        alert('Button Clicked');
    }

    return element;
}

const mainDiv = document.querySelector('main');
mainDiv.appendChild(component());
mainDiv.appendChild(component2());