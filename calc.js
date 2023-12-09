var buttons = document.querySelectorAll("button");
var input = document.getElementById('text');

Array.from(buttons).forEach(function(button){
    button.addEventListener('click', function(it){
        if(it.target.innerHTML == "⌫"){
            input.value = input.value.substring(0, input.value.length-1);
        } else if (it.target.innerHTML == "C"){
            input.value = "";
        }         
        else if (it.target.innerHTML == "="){           
            input.value = input.value.replace("x","*");            
            input.value = input.value.replace("÷","/");            
            input.value = eval(input.value);
        } 
        else {
            input.value += it.target.innerHTML;
        }
    })
})