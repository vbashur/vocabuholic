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
  <p>
 	<b>Set the delay and type your words</b>
  </p>
  <form name="form1" action="index.jsp" method="POST">
   Delay: <input id="delay" name="delay" type="number" value="500" min=100 max=10000 required="required">
  <input type="button" value="Submit" onClick="initLoop();" />
  <p><b>Words:</b><br>
     <textarea id="words" name="Words" cols="20" rows="10"></textarea>
     <br/>
     <textarea id="words2" name="Words2" cols="20" rows="10"></textarea>
  </p>
  Origin language:
  <select id="originalLang" size="1">
    <option>Russian</option>
    <option>English</option>
    <option>German</option>
    <option>Korean</option>
  </select>
  <br/>
  Translate to:
  <select id="translateTo" size="1">
    <option>Russian</option>
    <option>English</option>
    <option>German</option>
    <option>Korean</option>
  </select>
  </form>
   </td>   
   
   <td width="610">
   		<div id="center"><div class="content"><h3 id="original">Original</h3></div></div> 
   		<div id="center"><div class="content"><h2 id="tran">Translation</h2></div></div>   		
   <td>
   </tr>
   <script language="Javascript">
   var words = ['Hello', ', ', 'I ', 'will ', 'help ', 'you ', 'learning', '...'];
   var words2 = ['Hello', ', ', 'I ', 'will ', 'help ', 'you ', 'learning', '...'];
   
   var i = 0;
   function initLoop() {
	   i = 0;
	   var origin_words = document.getElementById('words').value;
	   words = origin_words.split("\n");
	   var tran_words = document.getElementById('words2').value;
	   words2 = tran_words.split("\n");
	   
	   delayedLoop();
   }
   function delayedLoop()
{

original.firstChild.nodeValue = words[i];
tran.firstChild.nodeValue = words2[i];

if(++i == words.length)
{
return;
}

var delay = document.getElementById('delay').value;
window.setTimeout(delayedLoop, delay);
}   
 </script>  
</table>

</body>
</html>
