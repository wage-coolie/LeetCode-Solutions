var reverse = function(x) {
    var a = x.toString() 
    if (a[0] == '-') {
        a = a[0] + a.slice(1,).split('').reverse().join('')
        // console.log(a)
    }else{
        a = a.split("").reverse().join("");
    }
    a = parseInt(a)
    if ( -(2**31)<a && a<2**31){
        return a;
    }
    return 0;

};
