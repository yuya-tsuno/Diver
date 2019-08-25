let barrier;
{
  let data = {name: "shibata",password: "hogehoge"};
  barrier = function(){
    console.log(data.password);
    return data;
  };
}
console.log("Pass1");
barrier();
let invasion = barrier();
console.log(invasion);
invasion.password = "fugafuga";
console.log(invasion);
console.log("Pass");
barrier();
