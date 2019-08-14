// # From Codecademy (https://www.codecademy.com/courses/introduction-to-javascript/lessons/functions/exercises)

function getReminder() {
  console.log("Water the plants.");
}

function greetInSpanish() {
  console.log('Buenas Tardes.')
}

// function sayThanks() {
//   console.log('Thank you for your purchase! We appreciate your business.');
// }

// sayThanks();
// sayThanks();
// sayThanks();

function sayThanks(name) {
  console.log(`Thank you for your purchase ${name}! We appreciate your business.`);
}

sayThanks('Cole');

function makeShoppingList(item1 = 'milk', item2 = 'bread', item3 = 'eggs'){
  console.log(`Remember to buy ${item1}`);
  console.log(`Remember to buy ${item2}`);
  console.log(`Remember to buy ${item3}`);
}
