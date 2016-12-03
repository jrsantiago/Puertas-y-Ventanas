using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
   public class Materiales : ClaseMaestra
    {

        public int MaterialId { get; set; }
        public string Detalle { get; set; }
        public string Unidad { get; set; }
        public float Cantidad { get; set; }
        public float Precio { get; set; }
        public float Existencia { get; set; }
        public List<Materiales> Listar { get; set; }
        public Materiales()
        {
            this.MaterialId = 0;
            this.Detalle = "";
            this.Unidad = "";
            this.Cantidad = 0;
            this.Precio = 0;
            this.Listar = new List<Materiales>();
        }
        public Materiales(string Detalle,float existencia, float Cantidad)
        {
          
            this.Detalle = Detalle;
            this.Existencia = existencia;
            this.Cantidad = Cantidad;

        }
        public override bool Buscar(int IdBuscado)
        {
            DbVentana cone = new DbVentana();
            DataTable dt = new DataTable();
            bool Retornar = false;

            try
            {
                dt = cone.ObtenerDatos(String.Format("Select * from Materiales where MaterialId = {0}", IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.Detalle = dt.Rows[0]["Detalle"].ToString();
                    this.Unidad = dt.Rows[0]["Unidad"].ToString();
                    this.Cantidad = Convert.ToSingle(dt.Rows[0]["Cantidad"]);
                    this.Precio = Convert.ToSingle(dt.Rows[0]["Precio"]);
                    Retornar = true;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Retornar;
        }
        public override bool Editar()
        {
            DbVentana cone = new DbVentana();
            bool Retornar = false;
            try
            {
                Retornar = cone.Ejecutar(String.Format("Update Materiales set Detalle='{0}',Unidad='{1}',Cantidad={2},Precio={3} where MaterialId={4}", this.Detalle, this.Unidad, this.Cantidad, this.Precio, this.MaterialId));

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Retornar;
        }
        public override bool Eliminar()
        {
            DbVentana cone = new DbVentana();
            bool Retornar = false;
            try
            {
                Retornar = cone.Ejecutar(String.Format("Delete from Materiales where MaterialId={0}", this.MaterialId));

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Retornar;
        }
        public override bool Insertar()
        {
            DbVentana cone = new DbVentana();
            bool Retornar = false;

            try
            {
                Retornar = cone.Ejecutar(String.Format("Insert into Materiales(Detalle,Unidad,Cantidad,Precio) Values('{0}','{1}',{2},{3})", this.Detalle, this.Unidad, this.Cantidad, this.Precio));              

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Retornar;

        }
        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            DbVentana cone = new DbVentana();
            DataTable dt = new DataTable();
            string campo = " '{0}'";

            string OrdenFinal = "";
            if (!Orden.Equals(""))
                OrdenFinal = "Order by " + Orden;  

            if(Condicion != string.Empty)
            {
                dt = cone.ObtenerDatos(String.Format("Select " + Campos + " from Materiales " + Condicion + campo, Orden));
            }
            else
            {
                dt = cone.ObtenerDatos(String.Format("Select * from Materiales "));
            }

            return dt;
        } 
        public void AgregarExistencia(string material, float restar, float cantidad)
        {
            this.Listar.Add(new Materiales(material, restar, cantidad));
        }
        public void ObtenerValor(string Material)
        {
            DbVentana cone = new DbVentana();
            DataTable dt = new DataTable();

            try
            {
                dt = cone.ObtenerDatos(String.Format("Select * from Materiales where Detalle ='{0}'", Material));
                if (dt.Rows.Count > 0)
                {                
                    this.Cantidad = Convert.ToSingle(dt.Rows[0]["Cantidad"]);
                    this.MaterialId = (int)dt.Rows[0]["MaterialId"];
                   
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public float Celucia(float Ancho, float Altura)
        {
            float TOTAL=0;
            float resultado1 = 0;
            float resultado2 = 0;
            float resultado3 = 0;
            float PIE = 0;
            PIE = Altura / 3.5F;

           if(Ancho>33)
            {
                PIE *= 2;
                resultado1 = Ancho - 4.5f;
                resultado2 = resultado1 / 2;
                resultado3 = resultado2 + 3;
                TOTAL = resultado3 * PIE;
            }
            else
            {
                resultado1 = Ancho - 4.5F;
                resultado2 = resultado1 / 2;
                resultado3 = resultado2 + 3;
                TOTAL= resultado3* PIE;
            }


            return TOTAL/12;

        }
        public string EncontrarCelucia(int IdMaterial)
        {
            string celocia = "";


            DataTable dt = new DataTable();
            DbVentana cone = new DbVentana();

            try
            {
                dt = cone.ObtenerDatos(String.Format("Select Detalle from Materiales where MaterialId = " + IdMaterial));
                if(dt.Rows.Count>0)
                {
                    celocia = dt.Rows[0]["Detalle"].ToString();
                }

            }catch(Exception)
            {

            }
            return celocia;
        }
    }
    
}
