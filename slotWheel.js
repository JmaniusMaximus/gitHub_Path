const 
    icon_width = 110,
    icon_height = 110,
    num_icons = 11,
    time_per_icon = 100,
    indexes = [0, 0, 0];
    iconMap = ["heart", "diamond", "coin", "grapes", "apple", "clover", "bell", "lemon", "cherries", "plum", "orange"];

const roll = (reel, offset = 0) => {
    const delta = (offset * 2) * num_icons + Math.round(Math.random() * num_icons);
    const style = getComputedStyle(reel),
        backgroundPositionY = parseFloat(style['background-position-y']),
        targetBackgroundPositionY = backgroundPositionY + delta * icon_height,
        normTargetBackgroundPositionY = targetBackgroundPositionY % (num_icons * icon_height);

    return new Promise((resolve, reject) => {
    reel.style.transition = `background-position-y ${8 + delta * time_per_icon}ms cubic-bezier(.45, .05, .58, 1.09)`;   
    reel.style.backgroundPositionY = `${targetBackgroundPositionY}px`;
    
    setTimeout(() => {
        reel.style.transition = `none`;
        reel.style.backgroundPositionY = `${normTargetBackgroundPositionY}px`;
        resolve(delta%num_icons);
        }, 8 + delta * time_per_icon);
    });
};

function flashBackground(color, times = 3) {
    const slots = document.querySelector('.slots');
    let count = 0;

    const flash = () => {
        if (count < times) {
        slots.style.transition = 'background-color 0.5s';
        slots.style.backgroundColor = color;
        setTimeout(() => {
            slots.style.backgroundColor = 'green'; // Reset to original color
            setTimeout(() => {
            count++;
            flash();
            }, 500);
            
            }, 500);
        }
    };
    flash();
}
    
function rollAll() {
    const reelsList = document.querySelectorAll('.slots > .reel');
    
    Promise
        .all( [...reelsList].map((reel, i) => roll(reel, i)))
        .then((deltas) => {
            deltas.forEach((delta, i) => indexes[i] = (indexes[i] + delta)%num_icons);
            indexes.map((index) => {console.log(iconMap[index]); });
            
            // Check win conditions
            if (indexes[0] === indexes[1] && indexes[1] === indexes[2]) {
                console.log('JACKPOT!');
                flashBackground('#FFD700'); // Gold
            } else if (indexes[0] === indexes[1] || indexes[1] === indexes[2]) {
                console.log('Small Win!') 
                flashBackground('#C0C0C0'); // Silver
            } else if (indexes[0] === indexes[2]) {
                console.log('Split Win!');
                flashBackground('#CD7F32'); // Bronze
            } else { 
            console.log('No Win :(');
            flashBackground('red'); // Red for no win
            }
            setTimeout(rollAll, 3000);

        });
}

rollAll();