var r=0;

 function echeck2(v)
{

re=/^[@\s]/g
if(re.test(v))
{
alert('plss enter correct id');
r=1;
}
var a='@';
var arr=v.split('@');

re=/gmail.com$/
if(re.test(arr[1])==false)
{
alert('enter email id correct');
r=1;
}

var arr2=arr[1].split('.');
re=/.com$/i
if(re.test(arr[0])==true)
{
alert('domain must be last');
r=1;
}

//valid(r);
}

function password1(e)
{
re=/[!@#$%^&*]/
if(re.test(e)==false)
{
alert('password must contain 1 special character');
r=1;
}

re=/[0-9]/
if(re.test(e)==false)
{
alert('password must contain 1 digit');
r=1;
}
 re=/.*[a-z]/i
if(re.test(e)==false)
{
alert('password must contain characters');
r=1;
}

//valid(r);
}

function check1()
{
with(document.forms.login)
{

if(pass.value.length!=7)
{
alert('please enter your password');
r=1;
}

if(enm.value.length!=0)
{

}
else
{
alert('please enter email id');
r=1;
}
valid(r);

}
}

function valid(r)
{
if(r!=1)

{
alert(' successful... You get 20% cash back... Thank you ..')
}
else
{
alert('sorry unsuccessful..!!');
}
}






























/*function valid()
{
var v1=echeck2(v);
var v2=password1(e);
var v3=check1();
if(v1==1)
{
alert('recharge successful ..Congratulation you get 20% cash back..thank u for the recharge...');
}
*/

