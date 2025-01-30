//Create list of ints from 1 to 5, Haskell equivalent [1..5]
function arrFunc(a,b){
    let arr = [];
    // let a = parseInt(prompt("Enter a start number"));
    // let b = parseInt(prompt("Enter an ending number"));
    for (let i = a; i<=b; i++) {
        arr.push(i);
    }
    return arr;    
}

function applicatorFunc(inpFunc, s,a,b){
    if(s=='s'){
        const arr = inpFunc(a,b);        
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum;
    }
    else{        
        const arr = inpFunc(a,b);
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum/(b-a+1);
    }
}

let x = applicatorFunc(arrFunc, 'a', 1, 10);
console.log(x);
