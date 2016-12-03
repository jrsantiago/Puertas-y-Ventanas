<%@ Page Title="" Language="C#" MasterPageFile="~/InicioGz.Master" AutoEventWireup="true" CodeBehind="ReProductos.aspx.cs" Inherits="VentanaGzWeb.Registros.ReVentatra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="text-center" style="height: 142px"> <asp:Image ID="ProductoImagen" runat="server" Height="117px" ImageUrl='~/Imagenes/gear-icon.png' Width="137px" />&nbsp;&nbsp;&nbsp;
                <br />
                <span  style="font-size: x-large; font-family:Forte; color: #000066;"> <strong>Registro Productos</strong></span></td>
        </tr>
        <tr>
            <td class="text-center"  style="height: 53px">
                Id
                <asp:TextBox ID="BuscarTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp; &nbsp;
                    <asp:Button CssClass="btn btn-primary" ID="BuscarButton" runat="server" Height="29px" OnClick="BuscarButton_Click" Text="Buscar" Width="116px" ValidationGroup="vg1" />
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="BuscarTextBox" ErrorMessage="Campo Id Vacio" ForeColor="#CC0000" style="font-size: x-large" ValidationGroup="vg1">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="BuscarTextBox" ErrorMessage="Solo Caracteres Numericos" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="[0-9]+" ValidationGroup="vg1">*</asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td class="text-center"  style="height: 76px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="nav-justified" style="height: 396px; margin-top: 31px;">
                    <tr>
                        <td class="text-center" style="height: 27px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripción&nbsp;&nbsp;&nbsp;<asp:TextBox ID="DescripcionTextBox" runat="server" Width="221px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DescripcionTextBox" ErrorMessage="Campo Descripcion Vacio" ForeColor="#CC0000" style="font-size: x-large" ValidationGroup="vgP">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="DescripcionTextBox" ErrorMessage="Solo Caracteres De Letras" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^[a-zA-Z]+(\s*[a-zA-Z]*)*[a-zA-Z]+$" ValidationGroup="vgP">*</asp:RegularExpressionValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="MaximoButton" CssClass="btn btn-primary" runat="server" Text="Precio Pie Maximo" OnClick="MaximoButton_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Precio x Pie&nbsp;&nbsp; <asp:TextBox ID="traTextBox" runat="server" Width="105px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="traTextBox" ErrorMessage="Campo Precio Pie Producto Vacio" ForeColor="#CC0000" style="font-size: x-large" ValidationGroup="vgP">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="traTextBox" ErrorMessage="Solo Caracteres Numericos" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^(\d|-)?(\d|,)*\.?\d*$" ValidationGroup="vgP">*</asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="MinimoButton0" CssClass="btn btn-primary" runat="server" Text="Precio Pie Minimo" OnClick="MinimoButton0_Click" Width="145px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="MinimoPieLabel" runat="server" Text="Minimo Pie"></asp:Label>
&nbsp;&nbsp; <asp:TextBox ID="MinimoPieTextBox" runat="server" Width="105px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="MinimoPieTextBox" ErrorMessage="Solo Caracteres Numericos" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^(\d|-)?(\d|,)*\.?\d*$" ValidationGroup="vgP">*</asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="PreMaxPiePieLabel0" runat="server" Text="Precio Maximo x Pie"></asp:Label>
                            &nbsp;<asp:TextBox ID="PrecioPieMaximoTextBox1" runat="server" Width="105px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="PrecioPieMaximoTextBox1" ErrorMessage="Solo Caracteres Numericos" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^(\d|-)?(\d|,)*\.?\d*$" ValidationGroup="vgP">*</asp:RegularExpressionValidator>
                            <asp:Label ID="MaximoPieLabel0" runat="server" Text="-----&gt;Maximo Pie"></asp:Label>
                            &nbsp;<asp:TextBox ID="MaximoPieTextBox0" runat="server" Width="105px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="MaximoPieTextBox0" ErrorMessage="Solo Caracteres Numericos" ForeColor="#CC0000" style="font-size: x-large" ValidationExpression="^(\d|-)?(\d|,)*\.?\d*$" ValidationGroup="vgP">*</asp:RegularExpressionValidator>
                            &nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 37px">Materiales&nbsp;&nbsp;<asp:DropDownList ID="MaterialesDropDownList" runat="server" Height="22px" Width="166px">
                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;Relacion&nbsp;&nbsp;<asp:DropDownList ID="RelacionlDropDownList0" runat="server" Height="22px" Width="110px">
                                <asp:ListItem Value="Ancho"></asp:ListItem>
                                <asp:ListItem Value="Altura"></asp:ListItem>
                                <asp:ListItem Value="Nada">Nada</asp:ListItem>
                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="AgregarButton" runat="server" Text="Agregar" OnClick="AgregarButton_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 37px">
                           
                            <table style="width:100%;">
                                <tr>
                                    <td style="width: 470px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 470px">&nbsp;</td>
                                    <td>
                           
                            <asp:GridView ID="ProductoGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="200px">
                                <Columns>
                                    <asp:BoundField DataField="MaterialId" HeaderText="MaterialId" />
                                    <asp:BoundField DataField="Relacion" HeaderText="Relacion" />
                                </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                <SortedDescendingHeaderStyle BackColor="#002876" />
                            </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14" style="height: 37px">
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#CC0000" ValidationGroup="vg1" />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" Height="61px" ValidationGroup="vgP" />
 </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                    <asp:Button CssClass="btn btn-primary" ID="GuardarButton" runat="server" Height="29px" OnClick="GuardarButton_Click" Text="Guardar" Width="115px" ValidationGroup="vgP" />
&nbsp;
                    <asp:Button CssClass="btn btn-success" ID="LimpiarButton" runat="server" Height="29px" Text="Limpiar" Width="116px" OnClick="LimpiarButton_Click" />
                    &nbsp;&nbsp;<asp:Button CssClass="btn btn-danger" ID="EliminarButton" runat="server" Height="29px" Text="Eliminar" Width="116px" OnClick="EliminarButton_Click" ValidationGroup="vg1" />
                        </td>
                    </tr>
                    </table>
            </td>
            
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
