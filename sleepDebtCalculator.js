// From Codecademy (https://www.codecademy.com/courses/introduction-to-javascript/projects/sleep-debt-calculator)

const getSleepHours = day => {
  day = day.toLowerCase();
  switch(day) {
    case 'monday':
      return 7.55;
      break;
    case 'tuesday':
      return 7.62;
      break;
    case 'wednesday':
      return 7.95;
      break;
    case 'thursday':
      return 5.90;
      break;
    case 'friday':
      return 7.15;
      break;
    case 'saturday':
      return 8.60;
      break;
    case 'sunday':
      return 7.10;
      break;
    default:
      return 'Please choose a valid day of the week.';
  }
}
// console.log(getSleepHours('Monday'));
// console.log(getSleepHours('tuesday'));
// console.log(getSleepHours('Wednesday'));
// console.log(getSleepHours('Thursday'));
// console.log(getSleepHours('Friday'));
// console.log(getSleepHours('sunday'));
// console.log(getSleepHours('Saturday'));
// console.log(getSleepHours('Winday'));

const getActualSleepHours = () => {
  return (getSleepHours('Monday') +
  getSleepHours('tuesday') +
  getSleepHours('Wednesday') +
  getSleepHours('Thursday') +
  getSleepHours('Friday') +
  getSleepHours('sunday') +
  getSleepHours('Saturday')).toFixed(2);
}

const getIdealSleepHours = hours => {
  return (hours * 7).toFixed(2);
}

const calculateSleepDebt = () => {
  let actualSleepHours = getActualSleepHours();
  let idealSleepHours = getIdealSleepHours(8);
  if (actualSleepHours === idealSleepHours) {
    console.log('You got the perfect amount of sleep!');
  } else if (actualSleepHours > idealSleepHours) {
    console.log('You got more sleep than needed.');
  } else if (actualSleepHours < idealSleepHours) {
  console.log(`You should get some rest. You got ${(idealSleepHours - actualSleepHours).toFixed(2)} hours less than you ideally need.`);
  };
}

console.log(getActualSleepHours());
console.log(getIdealSleepHours(8));

calculateSleepDebt();