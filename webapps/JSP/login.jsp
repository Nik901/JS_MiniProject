<%@page import="java.io.*" %>
<html>
   <head>
         <title>jsp page</title>
  </head>

<script>
function s(e)
{
  if(e.value=='1234')
{
 
     alert('proper user');
}
}
</script>

  <body>
      <h1>login page</h1>
     <form >

           <input type="text" name="t" value=""><br><br>

          User name:
           <input type="text" name="username" value=""><br><br>
          Password: 
           <input type="password" name="password" value="1234" onclick="s(this.value)"><br><br>
          <input type="submit" value="submit" onclick="s()"><br>
       </form>


</body>
</html>
