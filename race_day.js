// From Codecademy (https://www.codecademy.com/courses/introduction-to-javascript/projects/race-day)

let raceNumber = Math.floor(Math.random() * 1000);

let registeredEarly = true;

let age = 25;

if (age >= 18 && registeredEarly === true) {
  raceNumber += 1000;
}

if (age >= 18 && registeredEarly === true) {
  console.log(`Race time is 9:30am. Your race number is ${raceNumber}`);
}  else if (age >= 18 && registeredEarly === false) {
  console.log(`Race time is 11:00am. Your race number is ${raceNumber}`);
} else {
  console.log(`Race time is 12:30pm. Your race number is ${raceNumber}`);
}
