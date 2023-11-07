// Fig. 11.9: SplitAndSubString.js
// String object methods split and substring.
function splitButtonPressed()
{  
   var inputString = document.getElementById( "inputField" ).value;
   var tokens = inputString.split( " " ); 
   
   var result = document.getElementById( "results" );
   var results = "<p>The sentence split into words is: </p>" + 
      "<p>";
   for(var i in tokens)
   { results+=tokens[i]+"<br>";}
   results+="</p><p>The first 10 characters of the input string are: </p><p>"+inputString.substring( 0, 10 )+"</p>";
result.innerHTML=results;} // end function splitButtonPressed

// register click event handler for searchButton
function start()
{
   var splitButton = document.getElementById( "splitButton" );
   splitButton.addEventListener( "click", splitButtonPressed, false );
} // end function start

window.addEventListener( "load", start, false );

