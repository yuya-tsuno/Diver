function get_sum(points) {
  let sum = 0;
  for (let i=0; i<number; i++) {
    sum += points[i];
  }
  return sum;
}

function get_average(points) {
  let sum = get_sum(points);
  let average = sum / number;
  return average;
}


function get_achivement(points) {
  let sum = 0;
  for (let i=0; i<number; i++) {
    sum += points[i];
  }
  if (sum >= 100*0.8) {
    return "A";
  } else if (sum >= 100*0.6) {
    return "B";
  } else if (sum >= 100*0.4) {
    return "C";
  } else {
    return "D";
  }
}

function get_pass_or_failure(points) {
  let judge = "おめでとう！合格！";
  for (let i=0; i<number; i++) {
    if (points[i]<60) {
      judge = "不合格! なんで取れなかったか明日までに考えといてください。";
      break;
    }
  }
  return judge;
}

function judgement(points) {
  let sum = get_sum(points);
  let average = get_average(points);
  let achivement = get_achivement(points);
  let pass_or_failure = get_pass_or_failure(points);
  return `全教科の合計点数は${sum}点、平均は${average}点。よって君の成績は${achivement}。${pass_or_failure}`;
}

let points = [60,50,60,40,30,0];
let number = points.length;

console.log(judgement(points));
