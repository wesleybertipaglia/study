/*
    # Make an algorithm that transform numeric academic notes into letter notes

    >= 90 points: Note A
    80 - 89 points: Note B
    70 - 79 points: Note C
    60 - 69 points: Note D
    <= 60 points: Note E
*/

// verify note
function setNote(score) {
    if(score >= 90 && score <= 100) {
        note = "A"
    } else if (score >=80 && score <=89) {
        note = "B"
    } else if (score >=70 && score <=79) {
        note = "C"
    } else if (score >=60 && score <=69) {
        note = "D"
    } else if (score <=60 && score >= 0) {
        note = "E"
    } else {
        note = "Invalid score"
    }

    return note
}

// make some tests
console.log("Note:", setNote(-1))
console.log("Note:", setNote(101))
console.log("Note:", setNote(100))
console.log("Note:", setNote(80))
console.log("Note:", setNote(70))
console.log("Note:", setNote(60))