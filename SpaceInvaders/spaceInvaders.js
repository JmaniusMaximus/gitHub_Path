const grid = document.querySelector('.grid')
const resultDisplay = document.querySelector('.results')
let currentShooterIndex = 202
const width = 15
const aliensRemoved = []
let invadersId
let isGoingRight = true
let direction = 1
let results = 0

// Create the grid
for (let i = 0; i < width * width; i++) {
    const square = document.createElement('div')
    grid.appendChild(square)
} 

const squares = Array.from(document.querySelectorAll('.grid div'))

console.log(squares)

// Define the alien invaders
const alienInvaders = [
    0,1,2,3,4,5,6,7,8,9,
    15,16,17,18,19,20,21,22,23,24,
    30,31,32,33,34,35,36,37,38,39
]

// Draw the alien invaders
function draw() {
    for (let i = 0; i < alienInvaders.length; i++) {
        if (!aliensRemoved.includes(i)) {
            squares[alienInvaders[i]].classList.add('invader')
        }
    }
}
draw()

// Add the shooter
squares[currentShooterIndex].classList.add('shooter')

// Remove the alien invaders
function remove() {
    for (let i = 0; i < alienInvaders.length; i++) {
        squares[alienInvaders[i]].classList.remove('invader')
    }
}

// Move the shooter
function moveShooter(e) {
    squares[currentShooterIndex].classList.remove('shooter')
    switch(e.key) {
        case 'ArrowLeft':
            if (currentShooterIndex % width !== 0) currentShooterIndex -= 1
            break
        case 'ArrowRight':
            if (currentShooterIndex % width < width - 1) currentShooterIndex += 1
            break
    }
    squares[currentShooterIndex].classList.add('shooter')
}

document.addEventListener('keydown', moveShooter)

// Move the alien invaders
function moveInvaders() {
    const leftEdge = alienInvaders[0] % width === 0
    const rightEdge = alienInvaders[alienInvaders.length - 1] % width === width - 1
    remove()

    if (rightEdge && isGoingRight) {
        for (let i = 0; i < alienInvaders.length; i++) {
            alienInvaders[i] += width + 1
            direction = -1
            isGoingRight = false
        }
    }

    if (leftEdge && !isGoingRight) {
        for (let i = 0; i < alienInvaders.length; i++) {
            alienInvaders[i] += width - 1   
            direction = 1 
            isGoingRight = true
        }
    }

    for (let i = 0; i < alienInvaders.length; i++) {
        alienInvaders[i] += direction
    }

    draw()

    if (squares[currentShooterIndex].classList.contains('invader')) {
        resultDisplay.innerHTML = 'GAME OVER!'
        clearInterval(invadersId)
    }

    if (aliensRemoved.length === alienInvaders.length) {
        resultDisplay.innerHTML = 'YOU WIN!'
        clearInterval(invadersId)    
    }
}
invadersId = setInterval(moveInvaders, 600)

// Shoot the laser
function shoot(e) {
    let laserId
    let currentLaserIndex = currentShooterIndex

    function moveLaser() {
        squares[currentLaserIndex].classList.remove('laser')
        currentLaserIndex -= width
        if (currentLaserIndex < 0) {
            clearInterval(laserId)
            return
        }
        squares[currentLaserIndex].classList.add('laser')

        if (squares[currentLaserIndex].classList.contains('invader')) {
            squares[currentLaserIndex].classList.remove('laser')
            squares[currentLaserIndex].classList.remove('invader')
            squares[currentLaserIndex].classList.add('boom')

            setTimeout(() => squares[currentLaserIndex].classList.remove('boom'), 300)
            clearInterval(laserId)

            const alienRemoved = alienInvaders.indexOf(currentLaserIndex)
            aliensRemoved.push(alienRemoved)
            results++
            resultDisplay.innerHTML = results
            console.log(aliensRemoved)
        }
    }

    if (e.key === 'ArrowUp') {
        laserId = setInterval(moveLaser, 100)
    }
}

document.addEventListener('keydown', shoot)