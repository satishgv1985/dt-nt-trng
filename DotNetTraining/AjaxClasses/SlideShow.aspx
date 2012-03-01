<%@ Page Language="C#" AutoEventWireup="true" Title="Slideshow Popup Sample"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body><form id="form1" runat="server">

    <script runat="Server" type="text/C#">
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            new AjaxControlToolkit.Slide("images/Blue hills.jpg", "Blue Hills", "Go Blue"),
            new AjaxControlToolkit.Slide("images/Sunset.jpg", "Sunset", "Setting sun"),
            new AjaxControlToolkit.Slide("images/Winter.jpg", "Winter", "Wintery..."),
            new AjaxControlToolkit.Slide("images/Water lilies.jpg", "Water lillies", "Lillies in the water"),
            new AjaxControlToolkit.Slide("images/VerticalPicture.jpg", "Sedona", "Portrait style picture")};
        }
       
    </script>

    <div class="demoarea">
        <div class="demoheading">
           Slideshow with popup image</div>
        <br />
        <small>Just click the image displayed and this will popup that image in a customized window</small>
        <br />
        <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="server" />
        <div style="text-align: center">
            <asp:Label runat="Server" ID="imageTitle" CssClass="slideTitle" /><br />
            <asp:Image ID="Image1" runat="server" Height="300" Style="border: 1px solid black;
                width: auto" ImageUrl="~/SlideShow/images/Blue hills.jpg" AlternateText="Blue Hills image" />
            <asp:Label runat="server" ID="imageDescription" CssClass="slideDescription"></asp:Label><br />
            <br />
            <asp:Button runat="Server" ID="prevButton" Text="Prev" Font-Size="Larger" />
            <asp:Button runat="Server" ID="playButton" Text="Play" Font-Size="Larger" />
            <asp:Button runat="Server" ID="nextButton" Text="Next" Font-Size="Larger" />
            <ajaxToolkit:SlideShowExtender ID="slideshowextend1" runat="server" TargetControlID="Image1"
                SlideShowServiceMethod="GetSlides" AutoPlay="true" ImageTitleLabelID="imageTitle"
                ImageDescriptionLabelID="imageDescription" NextButtonID="nextButton" PlayButtonText="Play"
                StopButtonText="Stop" PreviousButtonID="prevButton" PlayButtonID="playButton"
                Loop="true" />
          
            <script type="text/javascript" language="javascript">
                function popupImage() {
                    // This is where you set how wide you want your popup window
                    var awidth = 800;
                    // This is where you set how high you want your popup window
                    var aheight = 600;
                    // This calculates the middle of the screen Horizontally
                    var leftVal = (screen.width / 2) - (awidth / 2);
                    // This calculates the middle of the screen Vertically
                    var topVal = (screen.height / 2) - (aheight / 2);
                  
                    // This is where you set it to show scrollbars.
                    var showScrollbars = 0; // Hide Scrollbars
                    //var showScrollbars = 1; // Show Scrollbars
                  
                    // This is where you set it to be resizable or not.
                    var isResizable = 0; //Not resizable
                    //var isResizable = 1; //Is resizable
                    
                    // This is where you set it to show Toolbars.
                    var showToolbar = 0; // Hide Toolbar
                    //var showToolbar = 1; // Show Toolbar
                   
                   // This is where you set it to show Status or not.
                    var showStatus = 0; // Hide Status
                    //var showStatus = 1; // Show Status
                    
                    // This is where you tell the window to popup
                    window.open($get("<%=Image1.ClientID %>").src
                                    ,''
                                    ,'scrollbars = ' + showScrollbars +
                                     ', height = ' + aheight +
                                     ', width = ' + awidth +
                                     ', resizable = ' + isResizable +
                                     ', toolbar = ' + showToolbar +
                                     ', status = ' + showStatus +
                                     ', left = ' + leftVal + 
                                     ', top = ' + topVal);

                }
                function pageLoad() {
                    // Set the image so it can accept a click, and tell it to call "popupImage"
                    $addHandler($get("<%=Image1.ClientID %>"), "click", popupImage);
                }
            </script>

        </div>
    </div>
    
 
</form></body>
</html>
