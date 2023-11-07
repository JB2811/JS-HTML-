var tags;
function loadSearches()
{ if(!window.sessionStorage.getItem("haspreviouslyvisited"))
  { window.sessionStorage.setItem("haspreviouslyvisited","true");}
  var l=localStorage.length;
  var i;
  tags=new Array(l);
  for(i=0;i<l;i++)
  { tags[i]=localStorage.key(i);}
  var res="<ol>";
  var url="https://twitter.com/search?q=%23";
  for(i=0;i<l;i++)
  { res+="<li><ul><li>Query: "+tags[i]+"</li><li>Tag: <a href='"+url+localStorage.getItem(tags[i])+"'>#"+localStorage.getItem(tags[i])+"</a></li></ul>";}
  res+="</ol>";
  h=document.getElementById("his");
  h.innerHTML=res;}
function saveSearch()
{ var key=document.getElementById("query").value;
  var tag=document.getElementById("tag").value;
  key.value=null;
  tag.value=null;
  localStorage.setItem(key,tag);
  loadSearches();}
function clearSearch()
{ localStorage.clear();
  loadSearches();}
function start()
{ s=document.getElementById("save");
  c=document.getElementById("clear");
  s.addEventListener("click",saveSearch,false);
  c.addEventListener("click",clearSearch,false);
  loadSearches();}
window.addEventListener("load",start,false);