<%@ Page Title="" Language="C#" MasterPageFile="~/masterPages/MasterPage.master"
    AutoEventWireup="true" CodeFile="html_intro.aspx.cs" Inherits="masterPages_html_intro" %>
    <%@ Register Src="~/masterPages/htmlUserControl.ascx" TagName="HTMLUserControl" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td valign="top">
               <uc:HTMLUserControl ID="htmlUserControl" runat="server" />
            </td>
            <td width="500">
                <h1>
                    HTML <span class="color_h1">Introduction</span></h1>
                <div class="chapter">
                    <div class="prev">
                        <a class="chapter" href="default.asp">&laquo; Previous</a></div>
                    <div class="next">
                        <a class="chapter" href="html_getstarted.asp">Next Chapter &raquo;</a></div>
                </div>
                <br />
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;html&gt;<br />
                        &lt;body&gt;<br />
                        <br />
                        &lt;h1&gt;My First Heading&lt;/h1&gt;<br />
                        <br />
                        &lt;p&gt;My first paragraph.&lt;/p&gt;<br />
                        <br />
                        &lt;/body&gt;<br />
                        &lt;/html&gt;
                    </div>
                    <br />
                    <a target="_blank" href="tryit.asp?filename=tryhtml_intro" class="tryitbtn">Try it yourself
                        &raquo;</a>
                </div>
                <hr />
                <h2>
                    What is HTML?</h2>
                <p>
                    HTML is a language for describing web pages.</p>
                <ul>
                    <li>HTML stands for <b>H</b>yper <b>T</b>ext <b>M</b>arkup <b>L</b>anguage</li><li>HTML
                        is not a programming language, it is a <b>markup language</b></li>
                    <li>A markup language is a set of <b>markup tags</b></li><li>HTML uses <b>markup tags</b>
                        to describe web pages </li>
                </ul>
                <hr />
                <h2>
                    HTML Tags</h2>
                <p>
                    HTML markup tags are usually called HTML tags</p>
                <ul>
                    <li>HTML tags are keywords surrounded by <b>angle brackets </b>like &lt;html&gt;</li><li>
                        HTML tags normally <b>come in pairs</b> like &lt;b&gt; and &lt;/b&gt;</li><li>The first
                            tag in a pair is the <b>start tag,</b> the second tag is the <b>end tag</b></li>
                    <li>Start and end tags are also called <b>opening tags</b> and <b>closing tags</b></li></ul>
                <hr />
                <h2>
                    HTML Documents = Web Pages</h2>
                <ul>
                    <li>HTML documents <b>describe web pages</b></li>
                    <li>HTML documents <b>contain HTML tags</b> and plain text</li>
                    <li>HTML documents are also <b>called web pages</b></li></ul>
                <p>
                    The purpose of a web browser (like Internet Explorer or Firefox) is to read HTML
                    documents and display them as web pages. The browser does not display the HTML tags,
                    but uses the tags to interpret the content of the page:</p>
            </td>
        </tr>
    </table>
</asp:Content>
