﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace WindowsForm1
{
    public partial class Form1 : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=root;password=;database=project_database");
        MySqlCommand comm;
        public Form1()
        {            
            InitializeComponent();
        }
        

            private void tabPage1_Click(object sender, EventArgs e)
        {

        }
        private void clear_data() {
            sid_textbox.Text = "";
            name_textbox.Text = "";
            gpa_textbox.Text = "";
            major_combobox.SelectedIndex = 0;
            advisor_combobox.SelectedIndex = 0;
            dob_datepicker.Value = DateTime.Now;
            female_radioButton.Checked = false;
            male_radioButton.Checked = false;

        }
        private void clear_btn_Click(object sender, EventArgs e)
        {
            clear_data();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            major_combobox.SelectedIndex = 0;
            advisor_combobox.SelectedIndex = 0;
            open_connection();
            load_student_griddata_init();
            load_major_combobox_init();
            load_advisor_combobox_init();

            load_teacher_griddata_init();
        }

        private void insert_btn_Click(object sender, EventArgs e)
        {
            var s_id = sid_textbox.Text;
            var s_name = name_textbox.Text;
            var selectedCar = major_combobox.SelectedIndex;
            var s_major = selectedCar.ToString();
            var gpa = gpa_textbox.Text;
            var gender = "";
            if (male_radioButton.Checked)
            {
                gender = male_radioButton.Text;
            }
            else {
                gender = female_radioButton.Text;
            }
            string dob_date = dob_datepicker.Value.ToString("yyyy-MM-dd");         
            var selectedCar2 = advisor_combobox.SelectedIndex;
            var advisor_id = selectedCar2.ToString();

            comm = con.CreateCommand();
            comm.CommandText = "INSERT INTO `project_database`.`student` (`Student_id`, `Student_name`, `GPA`, `Gender`, `DOB`, `Major_id`, `Teacher_id`) " +
                "VALUES " + "(@Student_id, @Student_name, @GPA, @Gender, @DOB, @Major_id, @Teacher_id)";

            comm.Parameters.AddWithValue("@Student_id", s_id);
            comm.Parameters.AddWithValue("@Student_name", s_name);
            comm.Parameters.AddWithValue("@GPA", gpa);
            comm.Parameters.AddWithValue("@Gender", gender);
            comm.Parameters.AddWithValue("@DOB", dob_date);
            comm.Parameters.AddWithValue("@Major_id", s_major);
            comm.Parameters.AddWithValue("@Teacher_id", advisor_id);

            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
                MessageBox.Show("Save Data Completed!");
                
            }
            catch (Exception ex) {
                MessageBox.Show(ex.Message);
            }
            load_student_griddata_init();
            clear_data();

        }


        private void open_connection()
        {

            con.Open();
            //MessageBox.Show($"MySQL version : {con.ServerVersion}");
        }

        private void load_student_griddata_init()
        {
            string sql = "SELECT * FROM project_database.student";
            comm = new MySqlCommand(sql, con);
            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            da.Fill(ds, "Student");
            student_dataGridView.DataSource = ds.Tables["Student"].DefaultView;
            student_dataGridView.Columns[4].DefaultCellStyle.Format = "yyyy-MM-dd";
       
        }
        private void load_major_combobox_init() {
            string sql = "SELECT distinct Major_name FROM project_database.major";
            comm = new MySqlCommand(sql, con);

            MySqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                major_combobox.Items.Add(reader.GetString("Major_name"));
            }
            reader.Close();
        }

        private void load_advisor_combobox_init()
        {
            string sql = "SELECT distinct Teacher_name FROM project_database.teacher";
            comm = new MySqlCommand(sql, con);

            MySqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                advisor_combobox.Items.Add(reader.GetString("Teacher_name"));
            }
            reader.Close();
        }

        private void student_dataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (student_dataGridView.SelectedRows.Count > 0) // make sure user select at least 1 row 
            {
                string s_id = student_dataGridView.SelectedRows[0].Cells[0].Value.ToString();
                string s_name = student_dataGridView.SelectedRows[0].Cells[1].Value.ToString();
                string s_gpa = student_dataGridView.SelectedRows[0].Cells[2].Value.ToString();
                string s_gender = student_dataGridView.SelectedRows[0].Cells[3].Value.ToString();
                string s_dob = student_dataGridView.SelectedRows[0].Cells[4].Value.ToString();
                string s_teacher = student_dataGridView.SelectedRows[0].Cells[5].Value.ToString();
                string s_major = student_dataGridView.SelectedRows[0].Cells[6].Value.ToString();
                                                        

                sid_textbox.Text = s_id;
                name_textbox.Text = s_name;
                gpa_textbox.Text = s_gpa;
                if (s_major != "") { 
                    major_combobox.SelectedIndex = int.Parse(s_major);}
                if(s_teacher != "")
                    advisor_combobox.SelectedIndex = int.Parse(s_teacher);
                DateTime dateBirth;
                if (s_dob != "") { 
                    dateBirth = Convert.ToDateTime(s_dob, null);
                    string str = dateBirth.Year + "-" + dateBirth.Month + "-" + dateBirth.Day;                
                    dob_datepicker.Value  = DateTime.ParseExact(str, "yyyy-M-d", null);
                }

                if (s_gender.Equals("Male"))
                {
                    male_radioButton.Checked = true;
                }
                else { female_radioButton.Checked = true; }
            }
        }

        private void update_btn_Click(object sender, EventArgs e)
        {
            var s_id = sid_textbox.Text;
            var s_name = name_textbox.Text;
            var selectedCar = major_combobox.SelectedIndex;
            var s_major = selectedCar.ToString();
            var gpa = gpa_textbox.Text;
            var gender = "";
            if (male_radioButton.Checked)
            {
                gender = male_radioButton.Text;
            }
            else
            {
                gender = female_radioButton.Text;
            }
            string dob_date = dob_datepicker.Value.ToString("yyyy-MM-dd");
            var selectedCar2 = advisor_combobox.SelectedIndex;
            var advisor_id = selectedCar2.ToString();

            comm = con.CreateCommand();
            comm.CommandText = "UPDATE `project_database`.`student`" +
                "SET `Student_name`=@Student_name, `GPA`=@GPA, `Gender`=@Gender, `DOB`=@DOB, `Major_id`=@Major_id, `Teacher_id`=@Teacher_id " +
                "WHERE `Student_id` = @Student_id";

            comm.Parameters.AddWithValue("@Student_id", s_id);
            comm.Parameters.AddWithValue("@Student_name", s_name);
            comm.Parameters.AddWithValue("@GPA", gpa);
            comm.Parameters.AddWithValue("@Gender", gender);
            comm.Parameters.AddWithValue("@DOB", dob_date);
            comm.Parameters.AddWithValue("@Major_id", s_major);
            comm.Parameters.AddWithValue("@Teacher_id", advisor_id);

            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
                MessageBox.Show("Update Data Completed!");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            load_student_griddata_init();
            clear_data();

        }

        private void delete_btn_Click(object sender, EventArgs e)
        {
            var s_id = sid_textbox.Text;
           
            comm = con.CreateCommand();
            comm.CommandText = "DELETE FROM  `project_database`.`student`"  +
                "WHERE `Student_id` = @Student_id";

            comm.Parameters.AddWithValue("@Student_id", s_id);


            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
                MessageBox.Show("Delete Data Completed!");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            load_student_griddata_init();
            clear_data();
        }

        private void student_dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void male_radioButton_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void sid_textbox_TextChanged(object sender, EventArgs e)
        {

        }

        // Teacher Part

        // INSERT
        private void tInsert_Click(object sender, EventArgs e)
        {
            var t_id = tid_textbox.Text;
            var t_name = tname_textbox.Text;
            var gender = "";
            if (male_radioButton.Checked)
            {
                gender = tmale_radioButton.Text;
            }
            else
            {
                gender = tfemale_radioButton.Text;
            }
            string dob_date = tdob_datepicker.Value.ToString("yyyy-MM-dd");

            comm = con.CreateCommand();
            comm.CommandText = "INSERT INTO `project_database`.`teacher` (`Teacher_id`, `Teacher_name`, `Gender`, `DOB`) " +
                "VALUES " + "(@Teacher_id, @Teacher_name, @Gender, @DOB)";

            comm.Parameters.AddWithValue("@Teacher_id", t_id);
            comm.Parameters.AddWithValue("@Teacher_name", t_name);
            comm.Parameters.AddWithValue("@Gender", gender);
            comm.Parameters.AddWithValue("@DOB", dob_date);

            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
                MessageBox.Show("Save Data Completed!");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            load_teacher_griddata_init();
            tclear_data();
        }

        private void teacher_dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        // UPDATE
        private void tUpdate_Click(object sender, EventArgs e)
        {
            var t_id = tid_textbox.Text;
            var t_name = tname_textbox.Text;
            var gender = "";
            if (male_radioButton.Checked)
            {
                gender = tmale_radioButton.Text;
            }
            else
            {
                gender = tfemale_radioButton.Text;
            }
            string dob_date = tdob_datepicker.Value.ToString("yyyy-MM-dd");

            comm = con.CreateCommand();
            comm.CommandText = "UPDATE `project_database`.`teacher`" +
                "SET `Teacher_name`=@Teacher_name, `Gender`=@Gender, `DOB`=@DOB " +
                "WHERE `Teacher_id` = @Teacher_id";

            comm.Parameters.AddWithValue("@Teacher_id", t_id);
            comm.Parameters.AddWithValue("@Teacher_name", t_name);
            comm.Parameters.AddWithValue("@Gender", gender);
            comm.Parameters.AddWithValue("@DOB", dob_date);

            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
                MessageBox.Show("Update Data Completed!");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            load_teacher_griddata_init();
            tclear_data();

        }

        // DELETE
        private void tDelete_Click(object sender, EventArgs e)
        {
            var t_id = tid_textbox.Text;

            comm = con.CreateCommand();
            comm.CommandText = "DELETE FROM  `project_database`.`teacher`" +
                "WHERE `Teacher_id` = @Teacher_id";

            comm.Parameters.AddWithValue("@Teacher_id", t_id);


            try
            {
                int rowsAffected = comm.ExecuteNonQuery();
                MessageBox.Show("Delete Data Completed!");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            load_teacher_griddata_init();
            tclear_data();
        }

        // FUNCTION CLEAR
        private void tclear_data()
        {
            tid_textbox.Text = "";
            tname_textbox.Text = "";
            tdob_datepicker.Value = DateTime.Now;
            tfemale_radioButton.Checked = false;
            tmale_radioButton.Checked = false;

        }

        // CLEAR
        private void tClear_Click(object sender, EventArgs e)
        {
            tclear_data();
        }

        // FUNCTION LOAD GRID DATA
        private void load_teacher_griddata_init()
        {
            string sql = "SELECT * FROM project_database.teacher";
            comm = new MySqlCommand(sql, con);
            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(comm);
            da.Fill(ds, "Teacher");
            teacher_dataGridView.DataSource = ds.Tables["Teacher"].DefaultView;
            teacher_dataGridView.Columns[3].DefaultCellStyle.Format = "yyyy-MM-dd";

        }

        // GRID VIWE
        private void teacher_dataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (teacher_dataGridView.SelectedRows.Count > 0) // make sure user select at least 1 row 
            {
                string t_id = teacher_dataGridView.SelectedRows[0].Cells[0].Value.ToString();
                string t_name = teacher_dataGridView.SelectedRows[0].Cells[1].Value.ToString();
                string t_gender = teacher_dataGridView.SelectedRows[0].Cells[2].Value.ToString();
                string t_dob = teacher_dataGridView.SelectedRows[0].Cells[3].Value.ToString();

                tid_textbox.Text = t_id;
                tname_textbox.Text = t_name;
                DateTime tdateBirth;

                if (t_dob != "")
                {
                    tdateBirth = Convert.ToDateTime(t_dob, null);
                    string str = tdateBirth.Year + "-" + tdateBirth.Month + "-" + tdateBirth.Day;
                    tdob_datepicker.Value = DateTime.ParseExact(str, "yyyy-M-d", null);
                }

                if (t_gender.Equals("Male"))
                {
                    tmale_radioButton.Checked = true;
                }
                else { tfemale_radioButton.Checked = true; }
            }
        }
    }
}
