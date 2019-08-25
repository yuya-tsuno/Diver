function get_achivement(x, y, z) {
  let sum = x + y + z;
  if (sum >= 250) {
    return "A";
  } else if (sum >= 200) {
    return "B";
  } else if (sum >= 100) {
    return "C";
  } else {
    return "D";
  }
}

console.log(get_achivement(40,40,90));


function get_pass_or_failure(x, y, z) {
  if(x>=60 && y>=60 && z>=60) {
    return "合格";
  } else {
    return "不合格"
  }
}

console.log(get_pass_or_failure(60,60,60));

function judgement(x, y, z) {
  let achivement = get_achivement(x, y, z);
  let pass_or_failure = get_pass_or_failure(x, y, z);
  return `あなたの成績は${achivement}です。${pass_or_failure}です！`;
}


console.log(judgement(50,60,60));
