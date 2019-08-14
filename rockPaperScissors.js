// From Codecademy (https://www.codecademy.com/courses/introduction-to-javascript/projects/rock-paper-scissors-javascript)

const getUserChoice = (userInput) => {
  userInput = userInput.toLowerCase();
  
  if (userInput === 'rock' || userInput === 'paper' || userInput === 'scissors' || userInput === 'bomb') {
    return userInput;
  } else {
    console.log('Invalid input: Please choose rock, paper, or scissors.');
  }; 
}

// console.log(getUserChoice('rock'));
// console.log(getUserChoice('paper'));
// console.log(getUserChoice('scissors'));
// console.log(getUserChoice('baseball'));

const getComputerChoice = () => {
  let choice = Math.floor(Math.random() * 3);
  if (choice === 0) {
    return 'rock';
  } else if (choice === 1) {
    return 'paper';
  } else if (choice === 2) {
    return 'scissors';
  };
}

// console.log(getComputerChoice());
// console.log(getComputerChoice());
// console.log(getComputerChoice());
// console.log(getComputerChoice());

function determineWinner(userChoice, computerChoice) {
  if (userChoice === computerChoice) {
    return 'Tie game!';
  } else if (userChoice === 'bomb') {
    return 'Total destruction! You are the winner!';
  }
  
  else if (userChoice === 'rock') {
    if (computerChoice === 'paper') {
      return 'The Computer won. -_-';
    } else {
      return 'You won! ^_^';
    };
  } else if (userChoice === 'paper') {
    if (computerChoice === 'scissors') {
      return 'The Computer won. -_-';
    } else {
      return 'You won! ^_^';
    };
  } else if (userChoice === 'scissors') {
    if (computerChoice === 'rock') {
      return 'The Computer won. -_-';
    } else {
      return 'You won! ^_^';
    };
  };
}

function playGame() {
  let userChoice = getUserChoice('bomb');
  console.log(userChoice);
  let computerChoice = getComputerChoice();
  console.log(computerChoice);
  console.log(determineWinner(userChoice, computerChoice));
}

playGame();