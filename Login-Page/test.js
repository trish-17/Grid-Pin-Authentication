function myFunction(){
    let text1="";
    let text="Your username is: "
    text1=document.getElementById("u").value;
    document.getElementById("demo1").innerHTML = text+text1;
    let text2="";
    let text_p="Your password is: "
    text2=document.getElementById("p").value;
    document.getElementById("demo2").innerHTML = text_p+text2;
}
function myFunction2(){
    text_num=document.getElementById("num").value;
    document.getElementById("demo2").innerHTML = text_num;
}
