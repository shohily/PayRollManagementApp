using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PayRollManagementApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private string connectionstring = @"server =USER;database=DB_PayRollSystem;integrated security=true";
        private int employeeID;

        private void insertButton_Click(object sender, EventArgs e)
        {
            employeeID = Convert.ToInt16(idTextBox.Text);
            string employeeName = nameTextBox.Text;
            double basicSalary = Convert.ToDouble(salaryTextBox.Text);
            double houseRent = (Convert.ToDouble(basicSalary))*20/100;
            double Medical = (Convert.ToDouble(basicSalary))*15/100;
            double Tax = (Convert.ToDouble(basicSalary))*5/100;
            double totalSalary = Convert.ToDouble(basicSalary) + houseRent + Medical - Tax;
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            string query =
                string.Format(@"insert into PayRoll_Table(EmployeeID,EmployeeName,BasicSalary,HouseRent,MedicalAllowance,Tax,TotalSalary)
                                 values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", employeeID, employeeName,
                    basicSalary, houseRent, Medical, Tax, totalSalary);
            SqlCommand aCommand = new SqlCommand(query, aConnection);
            MessageBox.Show("Data has been inserted");
            idTextBox.Text = "";
            nameTextBox.Text = "";
            salaryTextBox.Text = "";
            aCommand.ExecuteNonQuery();
            aConnection.Close();
        }

        private void showButton_Click(object sender, EventArgs e)
        {
            dataGridView.Rows.Clear();
            dataGridView.Refresh();
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();
            string tableSql = "SELECT * FROM PayRoll_Table";
            SqlCommand selectAllTableSqlCommand = new SqlCommand(tableSql, aConnection);
            SqlDataReader tableReader = selectAllTableSqlCommand.ExecuteReader();

            if (tableReader != null)
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                        tableReader[2].ToString(), tableReader[3].ToString(),
                        tableReader[4].ToString(), tableReader[5].ToString(), tableReader[6].ToString());
                }
            tableReader.Close();
            aConnection.Close();
        }

        private void searchButton_Click(object sender, EventArgs e)
        {

            dataGridView.Rows.Clear();
            dataGridView.Refresh();

            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();
            employeeID = Convert.ToInt16(searchTextBox.Text);


            SqlCommand searchByEmployeeID =
                new SqlCommand("SELECT * FROM PayRoll_Table WHERE EmployeeID like '" + employeeID + "'", aConnection);

            SqlDataReader tableReader = searchByEmployeeID.ExecuteReader();
            if (tableReader != null)
            {
                bool check = true;
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                        tableReader[2].ToString(), tableReader[3].ToString(),
                        tableReader[4].ToString(), tableReader[5].ToString(), tableReader[6].ToString());
                    check = false;
                }
                if (check)
                {
                    MessageBox.Show("Your desired employee ID information is not present in the database. ");
                }
                tableReader.Close();
                aConnection.Close();
            }


        }
    }
}
