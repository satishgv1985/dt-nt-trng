using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AspBackSideDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int val = 3;
            Label lblTextBoxes = new Label();
            lblTextBoxes.ID = "lblTextsBoxes";
            lblTextBoxes.Text = "No of Text Boxes: ";
            pnlRuntime.Controls.Add(lblTextBoxes);

            Table tbl = new Table();
            tbl.ID = "tbl";
            TableRow tr = new TableRow();
            TableCell td;
            RequiredFieldValidator rfvTBs;

            TextBox tb;
            for (int i = 0; i < val; i++)
            {
                tb = new TextBox();
                tb.ID = "firstTextbox" + i;
                rfvTBs = new RequiredFieldValidator();
                rfvTBs.ID = "rfv_" + i;
                rfvTBs.ControlToValidate = tb.ID;
                rfvTBs.ErrorMessage = "Please enter for textbox "+i;

                td = new TableCell();
                td.CssClass = "tdClass";


                td.Controls.Add(tb);
                td.Controls.Add(rfvTBs);

                tr.Cells.Add(td);

            }
            tbl.Rows.Add(tr);
            pnlRuntime.Controls.Add(tbl);
        }
    }
}