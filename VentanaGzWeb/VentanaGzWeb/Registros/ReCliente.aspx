﻿<%@ Page Title="" Language="C#" MasterPageFile="~/InicioGz.Master" AutoEventWireup="true" CodeBehind="ReCliente.aspx.cs" Inherits="VentanaGzWeb.Registros.ReCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 733px;">
        <tr>
            <td style="height: 232px"><table style="width: 100%; height: 125px;">
                <tr>
                    <td class="text-center" style="height: 100px; font-family:Forte; color:#080783"> <asp:Image ID="ProductoImagen" runat="server" Height="124px" ImageUrl='~/Imagenes/Cliente or usuario.png' Width="148px" />
                        <br />
                        <strong><h1>Registro Cliente</h1></strong></td>
                </tr>
                <tr>
                    <td class=" text-center" style="height: 81px"> <strong>Id&nbsp;
                        <asp:TextBox ID="BuscarTextBox"  runat="server" Width="194px"></asp:TextBox>
                        </strong>&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="BuscarTextBox" ErrorMessage="Campo Id Vacio" ForeColor="Red" style="font-size: x-large" ValidationGroup="vgIdc">*</asp:RequiredFieldValidator>
                                           </strong>&nbsp;<strong><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="BuscarTextBox" ErrorMessage="Solo Caracteres Numericos" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="[0-9]+" ValidationGroup="vgIdc">*</asp:RegularExpressionValidator>
                        </strong>&nbsp;<strong><asp:Button ID="BuscarButton" CssClass="btn btn-primary" runat="server" Height="32px" Text="Buscar" Width="96px" OnClick="BuscarButton_Click" ValidationGroup="vgIdc" />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Nombre <asp:TextBox ID="NombreTextBox" runat="server" Width="190px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Campo Nombre Vacio" ForeColor="Red" style="font-size: x-large" ValidationGroup="vgCl">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="NombreTextBox" ErrorMessage="Solo Caracteres de Letras" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^[a-zA-Z]+(\s*[a-zA-Z]*)*[a-zA-Z]+$" ValidationGroup="vgCl">*</asp:RegularExpressionValidator>
                        <br />
                        Telefono
                        <asp:TextBox ID="TelefonoTextBox" runat="server" Width="146px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Campo Telefono Vacio" ForeColor="Red" style="font-size: x-large" ValidationGroup="vgCl">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Solo Caracteres de Letras" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^[0-9a-zA-Z]+$" ValidationGroup="vgCl">*</asp:RegularExpressionValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dirección 
                        <asp:TextBox ID="DireccionTextBox" runat="server" Width="387px" Height="22px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Campo Dirección Vacio" ForeColor="Red" style="font-size: x-large" ValidationGroup="vgCl">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Solo Caracteres de Letras" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^[0-9a-zA-Z]+$" ValidationGroup="vgCl">*</asp:RegularExpressionValidator>
                        <br />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="height: 36px"> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Cedula
                        <asp:TextBox ID="CedulaTextBox" runat="server" Width="204px"></asp:TextBox>
                        <br />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="height: 36px"> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email&nbsp;<asp:TextBox ID="EmailTextBox" runat="server" Width="279px" style="margin-bottom: 0"></asp:TextBox>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class=" text-center" style="height: 100px"> 
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="vgIdc" Width="176px" />
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="vgCl" Width="176px" />
                    </td>
                </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style14; text-center" style="height: 100px">
                <asp:Button CssClass="btn btn-primary" ID="GUARDARButton" runat="server" Text="Guardar" Height="33px" OnClick="GUARDARButton_Click1" ValidationGroup="vgCl" />
                &nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="LimpiarButton" CssClass="btn btn-success" runat="server" Height="33px" Text="Nuevo" Width="109px" OnClick="LimpiarButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EliminarButton" CssClass="btn btn-danger" runat="server" Height="33px" Text="Eliminar" Width="109px" OnClick="EliminarButton_Click" ValidationGroup="vgIdc" />
 </td>
        </tr>
    </table>
</asp:Content>
