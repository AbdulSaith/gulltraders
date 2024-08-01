using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int clickscount=0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["DbConn"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("select empID,empName,empSalary,empDest from EmployeeT", con);
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "empName";
                    DropDownList1.DataValueField = "empID";
                    DropDownList1.DataBind();


                }




                if (!IsPostBack)
                {
                    TextBox1.Text = "0";

                }
                //Response.Write("No of Applications" + Application["TotalApplications"]);
                //Response.Write("<br/>");
                //Response.Write("Number of User Online " + Application["TotalUserSessions"]);
                ddlCity.Items.Clear();
                LoadCityDropdownlist();


            }
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ViewState["Clicks"]!=null)
            {
                clickscount = (int)ViewState["Clicks"] + 1;

            } 
                TextBox1.Text = clickscount.ToString();
            ViewState["Clicks"]=clickscount;
            }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }
        public void LoadCityDropdownlist()
        {
            DropDownList1.ClearSelection();
                ListItem listItem1 = new ListItem("Islamabad");
                ddlCity.Items.Add(listItem1);
            ListItem listItem2 = new ListItem("Karachi");
            ddlCity.Items.Add(listItem2);
            ListItem listItem3 = new ListItem("Lahore");
            ddlCity.Items.Add(listItem3);
            ListItem listItem4 = new ListItem("Select","-1");
           
            ddlCity.Items.Insert(0,listItem4);




        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (MaleRadioBtn.Checked)
            {
                Response.Write("Male Radio Button Checked");
            }
            else if (FemaleRadioBtn.Checked)
            {
                Response.Write("Female Radio Button Checked");
            }
            else
            {
                Response.Write("Unkown Radio Button Checked");
            }
            }

      

      

        protected void PostGraduateBtn_Click1(object sender, EventArgs e)
        {
            StringBuilder sbuserchoice = new StringBuilder();
            if (GraduateCheckBox.Checked)
            {
                sbuserchoice.Append(", "+GraduateCheckBox.Text);
            }
            if (PostGraduateCheckBox.Checked)
            {
                sbuserchoice.Append(", " + PostGraduateCheckBox.Text);
            }
            if (DoctrateCheckBox.Checked)
            {
                sbuserchoice.Append(", " + DoctrateCheckBox.Text);
            }
            Response.Write("Your Selection: " + sbuserchoice.ToString());
        }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }
   
        
        public void navigate()
        {
            Response.Write("Teamviewer");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible == false)
            {
                GridView1.Visible = true;
                Button3.Text = "HIDE";
            }
            else if (GridView1.Visible == true)
            {
                GridView1.Visible = false;
                Button3.Text = "SHOW";
            }
        }
    }
   }
