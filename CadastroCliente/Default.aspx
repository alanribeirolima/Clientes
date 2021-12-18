<%@ Page Language="C#" AutoEventWireup="true"  validateRequest="false"  CodeBehind="Default.aspx.cs" Inherits="CadastroCliente.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <h2>Cadastro de Clientes - Itaú FutureEducation  </h2>   
   <hr />
<div class="container-fluid">
     <table>
         <tr>
             <td>Nome do Cliente : </td>
             <td>
                 <asp:TextBox ID="txtCliente" runat="server" ></asp:TextBox>
             </td>
         </tr>


             <tr>
             <td>RG : </td>
             <td>
                 <asp:TextBox ID="txtRG" runat="server" ></asp:TextBox>
             </td>
             </tr>

         <tr>
             <td>CPF : </td>
             <td>
                 <asp:TextBox ID="txtCPF" runat="server" ></asp:TextBox>
             </td>
             </tr>

         <tr>
             <td>Endereço : </td>
             <td>
                 <asp:TextBox ID="txtEndereço" runat="server" ></asp:TextBox>
             </td>
             </tr>

         <tr>
             <td>Produto : </td>
             <td>
                 <asp:TextBox ID="txtProduto" runat="server"></asp:TextBox>
             </td>
             </tr>

          <tr>
             <td>Preço : </td>
             <td>
                 <asp:TextBox ID="txtPreco" runat="server" ></asp:TextBox>
             </td>
             </tr>
          <tr>
             <td colspan="3">
                 <asp:Button ID="btnCodigo" runat="server" Text="Salvar" OnClick="btnCodigo_Click"/>
             </td>
         </tr>
     </table>
  </div>
        <br />
        <asp:Label ID="lbldisplay" runat="server"></asp:Label>
    </form>

</body>
</html>
