console.log("hello world")

function madLib(verb, adj, noun){
  console.log(`we shall ${verb} ` + `the ${adj} ` + `${noun}`)
}
madLib('make','best','guac')

function isSubstring(string, sub){
  let words = string.split(" ");

  if (words.includes(sub)){
    return true;
  } else {
    return false;
  }
}
console.log(isSubstring("time to program", "time"))
console.log(isSubstring("Jump for joy", "joys"))

function fizzBuzz(array){
  let new_array = []
  for (let i = 0; i < array.length; i++){
    let num = array[i]
    if ((num % 3 == 0 || num % 5 == 0) && !(num % 3 == 0 && num % 5 == 0)){
      new_array.push(num)
    }
  }
  return new_array
}

console.log(fizzBuzz([3,5,9,15,30,50]))

function isPrime(num){
  if (num < 2){
    return false 
  }
  for (let i = 2; i < num; i++){
    if (num % i == 0){
      return false
    }
  }
  return true  
}
console.log(isPrime(2))
console.log(isPrime(10))
console.log(isPrime(15485863))
console.log(isPrime(3548563))

function sumOfNPrimes(num){
  let new_array = []
  for (let i = 2; new_array.length < num; i++){
    if (isPrime(i)){
      new_array.push(i)
    }
  }
  return new_array.reduce((acc, ele) => acc + ele, 0)
}

console.log(sumOfNPrimes(4))

