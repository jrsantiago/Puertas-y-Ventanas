<%@ Page Title="" Language="C#" MasterPageFile="~/InicioGz.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VentanaGzWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="text-center" style="width: 100%; height: 716px;">
        <tr>
            <td class="auto-style20" style="width: 326px; height: 390px;">
                <strong>
               
                            <span style="font-size: large">Fecha</span>
               
                            <asp:TextBox ID="FechaTextBox" runat="server" Height="25px" Width="80px" style="font-size: large" ReadOnly="True"></asp:TextBox>
                </strong>
                <br />
                <span style="font-size: large"><strong> <span class="auto-style16" style="font-size: xx-large; font-family:Arial">
                <br />
                <asp:Image ID="UsuarioImagen0" runat="server" Height="60px" ImageUrl="~/Imagenes/Whatsapp-icon.png" Width="60px" />
                <span class="auto-style16" style="font-size: medium; font-family:Arial">809-841-9356</span></span></strong></span><span class="auto-style16" style="font-size: medium; font-family:Arial"><span style="font-size: large"><strong><span class="auto-style16" style="font-size: xx-large; font-family:Arial"><br />
                </span> </span> <span class="auto-style16" style="font-family:Arial">
                &nbsp;<asp:Image ID="UsuarioImagen3" runat="server" Height="65px" ImageUrl="~/Imagenes/Phone-icon.png" Width="66px" />
                809-588-8073
                </span> <span class="auto-style16" style="font-size: xx-large; font-family:Arial">
                <span style="font-size: large"> <br />
                <asp:Image ID="UsuarioImagen1" runat="server" Height="60px" ImageUrl="~/Imagenes/Facebook-icon.png" Width="60px" />
                <br />
                <asp:Image ID="UsuarioImagen2" runat="server" Height="60px" ImageUrl="~/Imagenes/Gmail-icon.png" Width="60px" />
                </span>
                </span> </strong> 
                </span></td>
            <td style="width: 403px; height: 390px;"> <span class="auto-style16" style="font-size: xx-large; font-family:Arial">
                <asp:Image ID="UsuarioImagen" runat="server" Height="225px" ImageUrl="~/Imagenes/Ventana.png" Width="298px" />
                </span> <span class="auto-style16" style="font-size: medium; font-family:Arial">
                &nbsp;<br />
                Puertas Y Ventanas San Martin<br />
                San F.co de Macoris Republica Dominicana</span></td>
            <td class="text-left" style="height: 390px"><strong><span style="font-size: x-large">Fabricamos&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <br />
                </strong>
                <span style="font-size: large">*Toldos<br />
                *Ventanas&nbsp;<br />
                *Puertas Comercial<br />
                *Cortina de Baño&nbsp; &nbsp; <br />
                *Cristal Fijo etc.&nbsp;<strong>&nbsp; &nbsp;&nbsp; </strong> </span></td>
        </tr>
        <tr>
            <td class="auto-style20" style="width: 326px; font-size: medium;">
                &nbsp;</td>
            <td style="width: 403px; font-size: large;" class="text-left"> <strong>
                <asp:Label ID="LalNombre" runat="server" Text="Nombre" style="font-size: medium"></asp:Label>
                <asp:TextBox ID="TextNombre" CssClass=" form-control" runat="server" style="font-size: large" Height="27px" Width="225px"></asp:TextBox>
                </strong></td>
            <td class="text-left"> <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextNombre" ErrorMessage="CampoVacio" ForeColor="#CC0000" style="font-size: large" ValidationGroup="agGroup">*</asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style20" style="width: 326px; font-size: medium;">
                &nbsp;</td>
            <td style="width: 403px; font-size: large;" class="text-left"> <strong>
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono" style="font-size: medium"></asp:Label>
                &nbsp;<asp:TextBox ID="TextTelefono" CssClass=" form-control" runat="server" style="font-size: large" Height="27px" Width="251px"></asp:TextBox>
                </strong></td>
            <td class="text-left"> <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextTelefono" ErrorMessage="CampoVacio" ForeColor="#CC0000" style="font-size: large" ValidationGroup="agGroup">*</asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style20" style="width: 326px; font-size: medium;">
                &nbsp;</td>
            <td style="width: 403px; font-size: large;"> 
                <div class="text-left" style="font-size: medium">
                    <strong>Dirección</div>
                <asp:TextBox ID="TextDireccion" CssClass=" form-control" runat="server" style="font-size: large" Height="37px" Width="344px"></asp:TextBox>
                </strong></td>
            <td class="text-left"> <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextDireccion" ErrorMessage="CampoVacio" ForeColor="#CC0000" style="font-size: large" ValidationGroup="agGroup">*</asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style20" style="width: 326px; font-size: medium;">
                <strong>
                <asp:ValidationSummary ID="ValidationSummary3" runat="server" ForeColor="#CC0000" ValidationGroup="agGroup" />
                </strong></td>
            <td style="width: 403px; font-size: large;"> 
                <div class="text-left" style="font-size: medium">
                    <strong>Nota<asp:TextBox ID="TextNota" CssClass=" form-control" runat="server" style="font-size: large" Height="109px" Width="444px" TextMode="MultiLine"></asp:TextBox>
                </div>
                </strong></td>
            <td class="text-left"> <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextNota" ErrorMessage="CampoVacio" ForeColor="#CC0000" style="font-size: large" ValidationGroup="agGroup">*</asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style20" style="width: 326px; font-size: medium;">
                &nbsp;</td>
            <td style="width: 403px; font-size: large;"> 
                <br />
                <strong>
                <asp:Button ID="GuardarButton" CssClass="btn btn-primary" runat="server" Text="Enviar" OnClick="GuardarButton_Click" style="font-size: x-large" Width="345px" ValidationGroup="agGroup" />
                </strong>
            </td>
            <td class="text-left">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" style="width: 326px; font-size: medium;">
                &nbsp;</td>
            <td style="width: 403px; font-size: large;"> 
                &nbsp;</td>
            <td class="text-left">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" style="width: 326px; font-size: medium;">
                &nbsp;</td>
            <td style="width: 403px; font-size: large;"> 
                <table class="nav-justified">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <br />
                            <br />
                            <span class="auto-style16" style="font-size: xx-large; font-family:Arial">
                            <span style="color: #000066"><em>Notas</em></span><asp:Image ID="UsuarioImagen4" runat="server" Height="137px" ImageUrl="~/Imagenes/Notes-2-icon.png" Width="151px" />
                </span></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="text-left">&nbsp;</td>
        </tr>
        </table>
&nbsp;
    <table>
    <Tr>
        <td class="text-center">

            &nbsp;</td>
        <td class="text-center">

            &nbsp;</td>
        <td class="text-center">

                            <asp:GridView ID="NotasGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="277px" Width="950px" style="margin-right: 100px; margin-left: 102px;">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Nombre" HeaderStyle-Width="200px" HeaderStyle-CssClass="text-center"  HeaderStyle-BackColor="#5880D7" ItemStyle-BackColor="White" ItemStyle-BorderWidth="2px" HeaderStyle-BorderWidth="3px"  HeaderText="Nombre" />
                                    <asp:BoundField DataField="Telefono" HeaderStyle-Width="300px" HeaderStyle-CssClass="text-center"  HeaderStyle-BackColor="#5880D7" ItemStyle-BackColor="White" ItemStyle-BorderWidth="2px" HeaderStyle-BorderWidth="3px"  HeaderText="Telefono" />
                                    <asp:BoundField DataField="Direccion" HeaderStyle-Width="500px" HeaderStyle-CssClass="text-center"  HeaderStyle-BackColor="#5880D7" ItemStyle-BackColor="White" ItemStyle-BorderWidth="2px" HeaderStyle-BorderWidth="3px"  HeaderText="Direccion" />
                                    <asp:BoundField DataField="Nota" HeaderStyle-Width="700px" HeaderStyle-CssClass="text-center" HeaderStyle-BackColor="#5880D7" ItemStyle-BackColor="White" ItemStyle-BorderWidth="2px" HeaderStyle-BorderWidth="3px"  HeaderText="Nota" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>

        </td>
    </Tr>
</table>
</asp:Content>
