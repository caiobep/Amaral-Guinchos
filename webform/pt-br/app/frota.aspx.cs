﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pt_br_app_frota : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cadastro(object sender, EventArgs e){
      frota.Insert();
      Response.Redirect("~/pt-br/app/home.aspx");
    }
}
