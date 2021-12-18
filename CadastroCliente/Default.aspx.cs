using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CadastroCliente
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCodigo_Click(object sender, EventArgs e)
        {
            try
            {
                var RGConvert = txtRG.Text;
                int RGint;
                if ((int.TryParse(RGConvert.ToString(), out RGint)))
                {
                }
                var CPFConvert = txtCPF.Text;
                int CPFint;
                if ((int.TryParse(CPFConvert.ToString(), out CPFint)))
                {
                }
                var PrecoConvert = txtPreco.Text;
                int Precoint;
                if ((int.TryParse(PrecoConvert.ToString(), out Precoint)))
                {
                }
                string conStr = ConfigurationManager.ConnectionStrings["conexaoBD"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);
                SqlCommand cmd = new SqlCommand("Insert into Clientes values('" + txtCliente.Text + "'," + RGint + "," +  CPFint + ",'" + txtEndereço.Text + "', '"+ txtProduto.Text + "'," + Precoint + ")", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lbldisplay.Text = "Cliente inserido com sucesso...";
            }
            catch (Exception ex)
            {
                lbldisplay.Text = "Erro : " + ex.Message;
            }
        }
    }
}