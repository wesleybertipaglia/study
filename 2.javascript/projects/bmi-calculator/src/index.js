const calculateBtn = document.querySelector("#calculate");
calculateBtn.addEventListener("click", function (e) {
    e.preventDefault();
    calculateBmi();
});

function calculateBmi() {
    let heightField = document.querySelector("#height").value;
    let weightField = document.querySelector("#weight").value;
    let resultField = document.querySelector("#result");

    let height = parseFloat(heightField);
    let weight = parseFloat(weightField);
    let bmi = weight / (height * height);

    if (!isNaN(bmi)) {
        resultField.innerHTML = "Result: " + bmi.toFixed(2);
    } else {
        resultField.innerHTML = "You need to use a valid height and weight."
    }
}