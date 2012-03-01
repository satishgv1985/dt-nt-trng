<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsFeed.ascx.cs" Inherits="DotNetTraining.NewsFeed" %>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">    google.load("feeds", "1") //Load Google Ajax Feed API (version 1) </script>
<div id="feeddiv">
</div>
<script type="text/javascript">
    var feedcontainer = document.getElementById("feeddiv")
    window.onload = function () { rssfeedsetup('<%= feedUrl %>', '<%=feedNumber%>') }
</script>
<script language="javascript" type="text/javascript">
 
function rssfeedsetup(feedurl,feedlimit)
 {    
 var googleFeed=new google.feeds.Feed(feedurl) //Google Feed API method   
 googleFeed.setNumEntries(feedlimit) //Google Feed API method     
 googleFeed.load(displayfeed) //Google Feed API method 
 } 

function displayfeed(result) 
 { 
  if (!result.error)    
  {
  
   var thefeeds=result.feed.entries
   var rssoutput="<b>Latest Business News: </b> <ul>"                 

   for (var i=0; i<thefeeds.length; i++)
    rssoutput+="
<li><a href='" + thefeeds[i].link + "'>" + thefeeds[i].title + "</a></li>
"

    rssoutput+="</ul>"         

    feedcontainer.innerHTML=rssoutput
  }
  else alert('<%=errMessage%>') 
 }
 
</script>
