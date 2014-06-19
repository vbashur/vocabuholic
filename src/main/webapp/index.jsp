<html>
<style>
      div {
         
      
      }
      #center { text-align: center; }
      .content {
        width: 100%;
        
      }
</style>
<body>
<h2>Vocabuholic demo</h2>
<table width="800" border="1" align="center" cellspacing="0" cellpadding="10">
  <tr bgcolor="oldlace">
  <td width="190">
  <form action="index.jsp" method="POST">
   Delay: <input name="Delay" type="number" value="500" min=100 max=10000 required="required">
  <input type="submit" value="Submit"/>
  <p><b>Words:</b><br>
     <textarea name="Words" cols="20" rows="20"></textarea>
  </p>
  </form>

  <li><p><b>Set the delay and type english words:</b>
   <%= request.getParameter("Delay")%>
</p></li>
   </td>   
   <% int value = -1; %>
   <% for (int iter =0; iter < 22; ++iter) {
	   
	    value = iter;
	    
      }
   %>
   <td width="610">
   		<div id="center"><div class="content"><h3><%=value%></h3></div></div> 
   		<div id="center"><div class="content"><h2><%= request.getParameter("Words")%></h2></div></div>
   <td>
   </tr>
   
   
</table>

</body>
</html>
