﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;

namespace BLL
{
  public static class Utilitarios
    {
        public static void ShowToastr(this Page page, string mensaje, string titulo, string tipo="info")
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message",
                  String.Format("toastr.{0}('{1}', '{2}');", tipo.ToLower(), mensaje, titulo), addScriptTags: true);
        }
    }
}
