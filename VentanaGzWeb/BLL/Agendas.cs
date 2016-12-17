using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    public class Agendas
    {
        public int AgendaId { get; set; }
        public string Nombre { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string Nota { get; set; }
        public string Fecha { get; set; }
        public List<Agendas> Lista { get; set; }
        public Agendas()
        {
            this.AgendaId = 0;
            this.Nombre = "";
            this.Telefono = "";
            this.Direccion = "";
            this.Nota = "";
            this.Fecha = "";
            this.Lista = new List<Agendas>();

        }

        public bool Insertar()
        {
            DbVentana cone = new DbVentana();
            bool Retornar = false;
            try
            {

                Retornar = cone.Ejecutar(String.Format("Insert into Agendas(Nombre,Telefono,Direccion,Nota,Fecha) values('{0}','{1}','{2}','{3}',Convert(datetime,'{4}',5))", this.Nombre, this.Telefono, this.Direccion, this.Nota, this.Fecha));

            }
            catch (Exception)
            {

            }
            return Retornar;
        }
        public DataTable Buscar(int id)
        {
            DataTable dt = new DataTable();
            DbVentana cone = new DbVentana();
            try
            {
                dt = cone.ObtenerDatos(String.Format("Select * from Agendas where AgendaId =" + id));
                if (dt.Rows.Count > 0)
                {
                    this.AgendaId = (int)dt.Rows[0]["AgendaId"];
                    this.Nombre = dt.Rows[0]["Nombre"].ToString();
                    this.Telefono = dt.Rows[0]["Telefono"].ToString();
                    this.Direccion = dt.Rows[0]["Direccion"].ToString();
                    this.Nota = dt.Rows[0]["Nota"].ToString();
                    this.Fecha = dt.Rows[0]["Fecha"].ToString();
                }
            }
            catch (Exception)
            {

            }
            return dt;
        }
        public DataTable Listar (string Campos, string Condicion, string Orden)
        {
            DbVentana cone = new DbVentana();
            DataTable dt = new DataTable();
            string campo = " '{0}'";

            string OrdenFinal = "";
            if (!Orden.Equals(""))
                OrdenFinal = "Order by " + Orden;


            return dt = cone.ObtenerDatos(String.Format("Select " + Campos + " from Agendas " + Condicion + campo, Orden));

        }
    }
}
