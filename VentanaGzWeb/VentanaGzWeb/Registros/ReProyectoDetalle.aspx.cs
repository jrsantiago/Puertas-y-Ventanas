using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VentanaGzWeb.Registros
{
    public partial class ReProyectoDetalle : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
      
            if (!IsPostBack)
            {
                FechaTextBox.Text = DateTime.Now.ToString("dd/MM/yy");
                FechaTextBox.ReadOnly = true;
                LLenarGridview();
            }

            LlenarDrowList();

        }
        public int ConvertirId()
        {
            int id = 0;
            int.TryParse(BuscarClienteTextBox.Text, out id);
            return id;
        } 
        public int ConvertirIdProyecto()
        {
            int id = 0;
            int.TryParse(BuscarIdTextBox.Text, out id);

            return id;
        }
        public float ConvertirTotal()
        {
            float Total = 0;
            float.TryParse(TotalTextBox.Text, out Total);

            return Total;
        }         
        public void LLenarGridview()
        {
            DataTable dt = new DataTable();
        
       
            dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Descripcion"), new DataColumn("Ancho"), new DataColumn("Altura"), new DataColumn("Pie"), new DataColumn("Precio"), new DataColumn("Cantidad")});
            ViewState["Detalle"] = dt;

           
        }     
        public void ObtenerDatosCliente(Clientes cli)
        {
            ClienteTextBox.Text = cli.Nombre;
        }
        public void ObtenerGridView()
        {
            DetalleGridView.DataSource = (DataTable)ViewState["Detalle"];
            DetalleGridView.DataBind();

        }
        public void LlenarDrowList()
        {
            DataTable dt = new DataTable();
            Productos tra = new Productos();
         
            dt = tra.ListarProductos("*", "--", "--");
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
                TrabajoDropDownList.Items.Add(Convert.ToString(tra.ListarProductos("*", "--", "--").Rows[i]["Descripcion"]));
        }
        public bool CamposBacios()
        {
            bool Retornar = false;
            if(string.IsNullOrWhiteSpace(ClienteTextBox.Text) || DetalleGridView.Rows.Count == 0 || string.IsNullOrWhiteSpace(TotalTextBox.Text))
            {
                Retornar = true;
            }
            else
            {
                
            }
            return Retornar;
        }      
        public void ObtenerValores(Proyectos Pro,Productos pro)
        {
          
            Pro.Fecha = FechaTextBox.Text;
            Pro.Total = ConvertirTotal();
            Pro.ClienteId = ConvertirId();
            Pro.ProyectoId = ConvertirIdProyecto();
           


            foreach (GridViewRow row in DetalleGridView.Rows)
            {
                pro.ObtenerProducto(row.Cells[0].Text);
                Pro.AgregarTrabajos(1,pro.ProductoId, Convert.ToSingle(row.Cells[1].Text), Convert.ToSingle(row.Cells[2].Text),Convert.ToSingle(row.Cells[4].Text), Convert.ToSingle(row.Cells[5].Text),Convert.ToInt32(row.Cells[3].Text));
              
            }

        }
        public void LlenarValores(Proyectos pro)
        {
            DataTable dt = (DataTable)ViewState["Detalle"];
            BuscarClienteTextBox.Text = pro.ClienteId.ToString();
            TotalTextBox.Text = pro.Total.ToString();

            foreach(var item in pro.Detalle)
            {
                dt.Rows.Add(item.ProductoId, item.Ancho, item.Altura, item.Pie, item.Precio);
                ViewState["Detalle"] = dt;
                ObtenerGridView();
            }

        }
        public float Total()
        {            
           float total = DetalleGridView.Rows.Cast<GridViewRow>().Sum(x => Convert.ToSingle(x.Cells[5].Text));    
            return total;
        } 
        public void Limpiar()
        {
            ClienteTextBox.Text = string.Empty;
            BuscarClienteTextBox.Text = string.Empty;
            TotalTextBox.Text = string.Empty;
            DetalleGridView.DataSource = null;
            DetalleGridView.DataBind();
            BuscarIdTextBox.Text = string.Empty;

           
            LLenarGridview();
           ObtenerGridView();
        }  
        protected void BuscarClienteButton_Click(object sender, EventArgs e)
        {
            Clientes cli = new Clientes();

            if(string.IsNullOrWhiteSpace(BuscarClienteTextBox.Text))
            {

            }else
            {
               if (cli.Buscar(ConvertirId()))
                {
                    TrabajoDropDownList.Items.Clear();
                    LlenarDrowList();
                    ObtenerDatosCliente(cli);
                }else
                {
                    Utilitarios.ShowToastr(this, "Cliente No Existe", "Mensaje", "error");
                    ClienteTextBox.Text = string.Empty;
                }

            }
        }
        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            
            Productos tra = new Productos();
            Proyectos pro = new Proyectos();
            float Precio = 0;

            int cantidad = 0;
            if(string.IsNullOrWhiteSpace(CantidadTextBox0.Text))
            {
                cantidad = 1;

            }else
            {
               cantidad = Convert.ToInt32(CantidadTextBox0.Text);
            }
       

            try
            {
                DataTable dt = (DataTable)ViewState["Detalle"];
                DataRow row;
                row = dt.NewRow();

                tra.ObtenerProducto(TrabajoDropDownList.Text);

                row["Descripcion"] = TrabajoDropDownList.Text;
                row["Ancho"] = AnchoTextBox.Text;
                row["Altura"] = AlturaTextBox.Text;
                row["Cantidad"] = cantidad;
                row["Pie"] = tra.ObtenerPie(TrabajoDropDownList.Text);
                Precio= pro.Precio(AnchoTextBox.Text,AlturaTextBox.Text,TrabajoDropDownList.Text,cantidad);                            
                row["Precio"] = Precio;               
                dt.Rows.Add(row);
                ViewState["Detalle"] = dt;

                TrabajoDropDownList.Items.Clear();
                LlenarDrowList();
                ObtenerGridView();
                TotalTextBox.Text = Total().ToString("N2");
             
                AnchoTextBox.Text = string.Empty;
                AlturaTextBox.Text = string.Empty;
    
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        protected void DetalleGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Proyectos pro = new Proyectos();
            Productos p = new Productos();
      
            ObtenerValores(pro,p);

            if (CamposBacios())
            {
                Utilitarios.ShowToastr(this, "Error", "Mensaje", "error");
            }
            else
            {
                if (BuscarIdTextBox.Text=="")
                {
                    if (pro.Insertar())
                    {
                        
                    }
                }
                else
                {                  
                    if (pro.Editar())
                    {
                        
                    }
                }
                Limpiar();
                Utilitarios.ShowToastr(this, "Guardado", "Mensaje", "success");
            }
           
        }

        protected void LimpiarButton_Click1(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void BuscarProyectoButton_Click(object sender, EventArgs e)
        {
            TrabajoDropDownList.Items.Clear();
            LlenarDrowList();
            Proyectos pro = new Proyectos();
            if(string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
            {

            }
            else
            {

                if(pro.Buscar(ConvertirIdProyecto()))
                {
                    ObtenerGridView();
                    LLenarGridview();

                    LlenarValores(pro);

                }
                else
                {
                    Utilitarios.ShowToastr(this, "Id Incorrecto", "Mensaje", "error");
                    Limpiar();
                }
            }
        }

        protected void EliminarButton_Click1(object sender, EventArgs e)
        {
            Proyectos pro = new Proyectos();
            if (string.IsNullOrWhiteSpace(BuscarClienteTextBox.Text))
            {
                Utilitarios.ShowToastr(this, "Error", "Mensaje", "error");
            }
            else
            {
                pro.ProyectoId = ConvertirIdProyecto();
                if (pro.Eliminar())
                {
                    Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                    Limpiar();
                }
            }
        }
    }
}