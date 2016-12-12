using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Microsoft.Reporting.WebForms;


namespace VentanaGzWeb.Reportes
{
    public partial class ReportePresupuesto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Text = Request.QueryString["Text"];
                string Orden = Request.QueryString["Orden"];

                Proyectos mate = new Proyectos();

                PresupuestoReportViewer.LocalReport.DataSources.Clear();
                PresupuestoReportViewer.ProcessingMode = ProcessingMode.Local;


                PresupuestoReportViewer.LocalReport.ReportPath = @"Reportes\ReportPresupuesto.rdlc";

                ReportDataSource source = new ReportDataSource("PresupuestoDataSet", mate.ListarPresupuesto("M.Detalle,SUM(O.Cantidad)AS Cantidad", Text, Orden));

                PresupuestoReportViewer.LocalReport.DataSources.Add(source);
                PresupuestoReportViewer.LocalReport.Refresh();
            }

        }
    }
}