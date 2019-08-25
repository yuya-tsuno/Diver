function divide(i, j) {
  if (j === 0) {
    return "error";
  } else {
    return i / j;
  }
}

function showResult(i, j) {
  let result = divide(i, j); // divide関数の結果をresult変数に入れる

  if (result === "error") { // 結果が文字列 "error" だったらそのまま出力(割り切れない場合のため)
    return result;
  } else { // 割り切れている場合はresultに100をかける
    return `${result * 100}パーセントです`;
  }
}

console.log(showResult(2, 4)); // 50パーセントです
