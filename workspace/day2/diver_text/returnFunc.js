function add(i, j) {
  let sum = i + j;
  return sum;
}

console.log(add(2,3));


function isOverTen(i) {
  return i >= 10;
}

console.log(isOverTen(10));
console.log(isOverTen(8));


function divide(i, j) {
  if (j === 0) {
    return "error";
  } else {
    return i / j;
  }
}

console.log(divide(2,4));
console.log(divide(2,0));


function showResult(i, j,computeFunc) {
  let result = computeFunc(i, j);
  if (result === "error") {
    return result;
  } else {
    return `${result * 100}%です。`;
  }
}

console.log(showResult(2, 4, divide));


function add(i, j) {
  let result = i + j;
  if (result < 50) {
    return "50より小さい" ;
  } else {
    return "50以上です";
  }
}

console.log(add(10,20));
console.log(add(40,30));
