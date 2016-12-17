using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;


namespace VentanaGzWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(!IsPostBack)
            {
                FechaTextBox.Text = DateTime.Now.ToString("dd/MM/yy");
                ShowGrid();
            }
           
        }

        protected void EntrarImageButton_Click(object sender, ImageClickEventArgs e)
        {
          

        }

        public void ObtenerDatos(Agendas ag)
        {
            ag.Nombre = TextNombre.Text;
            ag.Telefono = TextTelefono.Text;
            ag.Direccion = TextDireccion.Text;
            ag.Nota = TextNota.Text;
            ag.Fecha = FechaTextBox.Text;
        }
        public void Limpiar()
        {
            TextNombre.Text = string.Empty;
            TextDireccion.Text = string.Empty;
            TextTelefono.Text = string.Empty;
            TextNota.Text = string.Empty;
        }
        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Agendas ag = new Agendas();
            ObtenerDatos(ag);
            if(ag.Insertar())
            {
                Utilitarios.ShowToastr(this, "Guardado", "Mensaje", "success");
                Limpiar();
            }
            else
            {
                Utilitarios.ShowToastr(this, "Error", "Mensaje", "error");
            }
            
        }
        public void ShowGrid()
        {
            Agendas ag = new Agendas();

            NotasGridView.DataSource = ag.Listar("*", "--", "--");
            NotasGridView.DataBind();
        }
    }
}