namespace WindowsForm1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Teacher_tabControl = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panel2 = new System.Windows.Forms.Panel();
            this.student_dataGridView = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.advisor_combobox = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.dob_datepicker = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.clear_btn = new System.Windows.Forms.Button();
            this.delete_btn = new System.Windows.Forms.Button();
            this.update_btn = new System.Windows.Forms.Button();
            this.insert_btn = new System.Windows.Forms.Button();
            this.female_radioButton = new System.Windows.Forms.RadioButton();
            this.male_radioButton = new System.Windows.Forms.RadioButton();
            this.label5 = new System.Windows.Forms.Label();
            this.gpa_textbox = new System.Windows.Forms.TextBox();
            this.major_combobox = new System.Windows.Forms.ComboBox();
            this.name_textbox = new System.Windows.Forms.TextBox();
            this.sid_textbox = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.tClear = new System.Windows.Forms.Button();
            this.tDelete = new System.Windows.Forms.Button();
            this.tUpdate = new System.Windows.Forms.Button();
            this.tInsert = new System.Windows.Forms.Button();
            this.tdob_datepicker = new System.Windows.Forms.DateTimePicker();
            this.tfemale_radioButton = new System.Windows.Forms.RadioButton();
            this.tmale_radioButton = new System.Windows.Forms.RadioButton();
            this.tname_textbox = new System.Windows.Forms.TextBox();
            this.tid_textbox = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.teacher_dataGridView = new System.Windows.Forms.DataGridView();
            this.Teacher_tabControl.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.student_dataGridView)).BeginInit();
            this.panel1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teacher_dataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // Teacher_tabControl
            // 
            this.Teacher_tabControl.Controls.Add(this.tabPage1);
            this.Teacher_tabControl.Controls.Add(this.tabPage2);
            this.Teacher_tabControl.Location = new System.Drawing.Point(-1, 1);
            this.Teacher_tabControl.Margin = new System.Windows.Forms.Padding(2);
            this.Teacher_tabControl.Name = "Teacher_tabControl";
            this.Teacher_tabControl.SelectedIndex = 0;
            this.Teacher_tabControl.Size = new System.Drawing.Size(496, 450);
            this.Teacher_tabControl.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.panel2);
            this.tabPage1.Controls.Add(this.panel1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Margin = new System.Windows.Forms.Padding(2);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(2);
            this.tabPage1.Size = new System.Drawing.Size(488, 424);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Student";
            this.tabPage1.UseVisualStyleBackColor = true;
            this.tabPage1.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.student_dataGridView);
            this.panel2.Location = new System.Drawing.Point(5, 210);
            this.panel2.Margin = new System.Windows.Forms.Padding(2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(481, 214);
            this.panel2.TabIndex = 1;
            // 
            // student_dataGridView
            // 
            this.student_dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.student_dataGridView.Dock = System.Windows.Forms.DockStyle.Fill;
            this.student_dataGridView.Location = new System.Drawing.Point(0, 0);
            this.student_dataGridView.Margin = new System.Windows.Forms.Padding(2);
            this.student_dataGridView.Name = "student_dataGridView";
            this.student_dataGridView.RowHeadersWidth = 62;
            this.student_dataGridView.RowTemplate.Height = 28;
            this.student_dataGridView.Size = new System.Drawing.Size(481, 214);
            this.student_dataGridView.TabIndex = 0;
            this.student_dataGridView.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.student_dataGridView_CellClick);
            this.student_dataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.student_dataGridView_CellContentClick);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.OldLace;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.advisor_combobox);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Controls.Add(this.dob_datepicker);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.clear_btn);
            this.panel1.Controls.Add(this.delete_btn);
            this.panel1.Controls.Add(this.update_btn);
            this.panel1.Controls.Add(this.insert_btn);
            this.panel1.Controls.Add(this.female_radioButton);
            this.panel1.Controls.Add(this.male_radioButton);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.gpa_textbox);
            this.panel1.Controls.Add(this.major_combobox);
            this.panel1.Controls.Add(this.name_textbox);
            this.panel1.Controls.Add(this.sid_textbox);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(5, 4);
            this.panel1.Margin = new System.Windows.Forms.Padding(2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(482, 203);
            this.panel1.TabIndex = 0;
            // 
            // advisor_combobox
            // 
            this.advisor_combobox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.advisor_combobox.FormattingEnabled = true;
            this.advisor_combobox.Items.AddRange(new object[] {
            "---Select---"});
            this.advisor_combobox.Location = new System.Drawing.Point(74, 164);
            this.advisor_combobox.Margin = new System.Windows.Forms.Padding(2);
            this.advisor_combobox.Name = "advisor_combobox";
            this.advisor_combobox.Size = new System.Drawing.Size(203, 21);
            this.advisor_combobox.TabIndex = 18;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(29, 166);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(42, 13);
            this.label7.TabIndex = 17;
            this.label7.Text = "Advisor";
            // 
            // dob_datepicker
            // 
            this.dob_datepicker.CustomFormat = "yyyy-MM-dd";
            this.dob_datepicker.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dob_datepicker.Location = new System.Drawing.Point(74, 138);
            this.dob_datepicker.Margin = new System.Windows.Forms.Padding(2);
            this.dob_datepicker.Name = "dob_datepicker";
            this.dob_datepicker.Size = new System.Drawing.Size(204, 20);
            this.dob_datepicker.TabIndex = 16;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(40, 140);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(30, 13);
            this.label6.TabIndex = 15;
            this.label6.Text = "DOB";
            // 
            // clear_btn
            // 
            this.clear_btn.BackColor = System.Drawing.Color.LightGreen;
            this.clear_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.clear_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.clear_btn.Location = new System.Drawing.Point(328, 146);
            this.clear_btn.Margin = new System.Windows.Forms.Padding(2);
            this.clear_btn.Name = "clear_btn";
            this.clear_btn.Size = new System.Drawing.Size(137, 30);
            this.clear_btn.TabIndex = 14;
            this.clear_btn.Text = "CLEAR";
            this.clear_btn.UseVisualStyleBackColor = false;
            this.clear_btn.Click += new System.EventHandler(this.clear_btn_Click);
            // 
            // delete_btn
            // 
            this.delete_btn.BackColor = System.Drawing.Color.LightGreen;
            this.delete_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.delete_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.delete_btn.Location = new System.Drawing.Point(328, 100);
            this.delete_btn.Margin = new System.Windows.Forms.Padding(2);
            this.delete_btn.Name = "delete_btn";
            this.delete_btn.Size = new System.Drawing.Size(137, 30);
            this.delete_btn.TabIndex = 13;
            this.delete_btn.Text = "DELETE";
            this.delete_btn.UseVisualStyleBackColor = false;
            this.delete_btn.Click += new System.EventHandler(this.delete_btn_Click);
            // 
            // update_btn
            // 
            this.update_btn.BackColor = System.Drawing.Color.LightGreen;
            this.update_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.update_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.update_btn.Location = new System.Drawing.Point(328, 55);
            this.update_btn.Margin = new System.Windows.Forms.Padding(2);
            this.update_btn.Name = "update_btn";
            this.update_btn.Size = new System.Drawing.Size(137, 30);
            this.update_btn.TabIndex = 12;
            this.update_btn.Text = "UPDATE";
            this.update_btn.UseVisualStyleBackColor = false;
            this.update_btn.Click += new System.EventHandler(this.update_btn_Click);
            // 
            // insert_btn
            // 
            this.insert_btn.BackColor = System.Drawing.Color.LightGreen;
            this.insert_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.insert_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.insert_btn.Location = new System.Drawing.Point(328, 13);
            this.insert_btn.Margin = new System.Windows.Forms.Padding(2);
            this.insert_btn.Name = "insert_btn";
            this.insert_btn.Size = new System.Drawing.Size(137, 30);
            this.insert_btn.TabIndex = 11;
            this.insert_btn.Text = "INSERT";
            this.insert_btn.UseVisualStyleBackColor = false;
            this.insert_btn.Click += new System.EventHandler(this.insert_btn_Click);
            // 
            // female_radioButton
            // 
            this.female_radioButton.AutoSize = true;
            this.female_radioButton.Location = new System.Drawing.Point(132, 116);
            this.female_radioButton.Margin = new System.Windows.Forms.Padding(2);
            this.female_radioButton.Name = "female_radioButton";
            this.female_radioButton.Size = new System.Drawing.Size(59, 17);
            this.female_radioButton.TabIndex = 10;
            this.female_radioButton.TabStop = true;
            this.female_radioButton.Text = "Female";
            this.female_radioButton.UseVisualStyleBackColor = true;
            // 
            // male_radioButton
            // 
            this.male_radioButton.AutoSize = true;
            this.male_radioButton.Location = new System.Drawing.Point(74, 116);
            this.male_radioButton.Margin = new System.Windows.Forms.Padding(2);
            this.male_radioButton.Name = "male_radioButton";
            this.male_radioButton.Size = new System.Drawing.Size(48, 17);
            this.male_radioButton.TabIndex = 9;
            this.male_radioButton.TabStop = true;
            this.male_radioButton.Text = "Male";
            this.male_radioButton.UseVisualStyleBackColor = true;
            this.male_radioButton.CheckedChanged += new System.EventHandler(this.male_radioButton_CheckedChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(27, 118);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Gender";
            // 
            // gpa_textbox
            // 
            this.gpa_textbox.Location = new System.Drawing.Point(74, 90);
            this.gpa_textbox.Margin = new System.Windows.Forms.Padding(2);
            this.gpa_textbox.Name = "gpa_textbox";
            this.gpa_textbox.Size = new System.Drawing.Size(204, 20);
            this.gpa_textbox.TabIndex = 7;
            // 
            // major_combobox
            // 
            this.major_combobox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.major_combobox.FormattingEnabled = true;
            this.major_combobox.Items.AddRange(new object[] {
            "---Select---"});
            this.major_combobox.Location = new System.Drawing.Point(74, 62);
            this.major_combobox.Margin = new System.Windows.Forms.Padding(2);
            this.major_combobox.Name = "major_combobox";
            this.major_combobox.Size = new System.Drawing.Size(203, 21);
            this.major_combobox.TabIndex = 6;
            // 
            // name_textbox
            // 
            this.name_textbox.Location = new System.Drawing.Point(74, 36);
            this.name_textbox.Margin = new System.Windows.Forms.Padding(2);
            this.name_textbox.Name = "name_textbox";
            this.name_textbox.Size = new System.Drawing.Size(204, 20);
            this.name_textbox.TabIndex = 5;
            // 
            // sid_textbox
            // 
            this.sid_textbox.Location = new System.Drawing.Point(74, 11);
            this.sid_textbox.Margin = new System.Windows.Forms.Padding(2);
            this.sid_textbox.Name = "sid_textbox";
            this.sid_textbox.Size = new System.Drawing.Size(204, 20);
            this.sid_textbox.TabIndex = 4;
            this.sid_textbox.TextChanged += new System.EventHandler(this.sid_textbox_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(41, 92);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "GPA";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(37, 64);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(33, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Major";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(35, 38);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Name";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 13);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Student ID";
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.panel4);
            this.tabPage2.Controls.Add(this.panel3);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Margin = new System.Windows.Forms.Padding(2);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(2);
            this.tabPage2.Size = new System.Drawing.Size(488, 424);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Teacher";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.teacher_dataGridView);
            this.panel4.Location = new System.Drawing.Point(2, 210);
            this.panel4.Margin = new System.Windows.Forms.Padding(2);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(487, 216);
            this.panel4.TabIndex = 2;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.LightCyan;
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Controls.Add(this.tClear);
            this.panel3.Controls.Add(this.tDelete);
            this.panel3.Controls.Add(this.tUpdate);
            this.panel3.Controls.Add(this.tInsert);
            this.panel3.Controls.Add(this.tdob_datepicker);
            this.panel3.Controls.Add(this.tfemale_radioButton);
            this.panel3.Controls.Add(this.tmale_radioButton);
            this.panel3.Controls.Add(this.tname_textbox);
            this.panel3.Controls.Add(this.tid_textbox);
            this.panel3.Controls.Add(this.label11);
            this.panel3.Controls.Add(this.label10);
            this.panel3.Controls.Add(this.label9);
            this.panel3.Controls.Add(this.label8);
            this.panel3.Location = new System.Drawing.Point(2, 4);
            this.panel3.Margin = new System.Windows.Forms.Padding(2);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(487, 203);
            this.panel3.TabIndex = 1;
            // 
            // tClear
            // 
            this.tClear.Location = new System.Drawing.Point(352, 117);
            this.tClear.Name = "tClear";
            this.tClear.Size = new System.Drawing.Size(87, 23);
            this.tClear.TabIndex = 12;
            this.tClear.Text = "CLEAR";
            this.tClear.UseVisualStyleBackColor = true;
            this.tClear.Click += new System.EventHandler(this.tClear_Click);
            // 
            // tDelete
            // 
            this.tDelete.Location = new System.Drawing.Point(352, 82);
            this.tDelete.Name = "tDelete";
            this.tDelete.Size = new System.Drawing.Size(87, 23);
            this.tDelete.TabIndex = 11;
            this.tDelete.Text = "DELETE";
            this.tDelete.UseVisualStyleBackColor = true;
            this.tDelete.Click += new System.EventHandler(this.tDelete_Click);
            // 
            // tUpdate
            // 
            this.tUpdate.Location = new System.Drawing.Point(352, 47);
            this.tUpdate.Name = "tUpdate";
            this.tUpdate.Size = new System.Drawing.Size(87, 23);
            this.tUpdate.TabIndex = 10;
            this.tUpdate.Text = "UPDATE";
            this.tUpdate.UseVisualStyleBackColor = true;
            this.tUpdate.Click += new System.EventHandler(this.tUpdate_Click);
            // 
            // tInsert
            // 
            this.tInsert.Location = new System.Drawing.Point(352, 12);
            this.tInsert.Name = "tInsert";
            this.tInsert.Size = new System.Drawing.Size(87, 23);
            this.tInsert.TabIndex = 9;
            this.tInsert.Text = "INSERT";
            this.tInsert.UseVisualStyleBackColor = true;
            this.tInsert.Click += new System.EventHandler(this.tInsert_Click);
            // 
            // tdob_datepicker
            // 
            this.tdob_datepicker.CustomFormat = "yyyy-MM-dd";
            this.tdob_datepicker.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.tdob_datepicker.Location = new System.Drawing.Point(120, 111);
            this.tdob_datepicker.Name = "tdob_datepicker";
            this.tdob_datepicker.Size = new System.Drawing.Size(182, 20);
            this.tdob_datepicker.TabIndex = 8;
            // 
            // tfemale_radioButton
            // 
            this.tfemale_radioButton.AutoSize = true;
            this.tfemale_radioButton.Location = new System.Drawing.Point(194, 82);
            this.tfemale_radioButton.Name = "tfemale_radioButton";
            this.tfemale_radioButton.Size = new System.Drawing.Size(59, 17);
            this.tfemale_radioButton.TabIndex = 7;
            this.tfemale_radioButton.TabStop = true;
            this.tfemale_radioButton.Text = "Female";
            this.tfemale_radioButton.UseVisualStyleBackColor = true;
            // 
            // tmale_radioButton
            // 
            this.tmale_radioButton.AutoSize = true;
            this.tmale_radioButton.Location = new System.Drawing.Point(120, 82);
            this.tmale_radioButton.Name = "tmale_radioButton";
            this.tmale_radioButton.Size = new System.Drawing.Size(48, 17);
            this.tmale_radioButton.TabIndex = 6;
            this.tmale_radioButton.TabStop = true;
            this.tmale_radioButton.Text = "Male";
            this.tmale_radioButton.UseVisualStyleBackColor = true;
            // 
            // tname_textbox
            // 
            this.tname_textbox.Location = new System.Drawing.Point(120, 49);
            this.tname_textbox.Name = "tname_textbox";
            this.tname_textbox.Size = new System.Drawing.Size(182, 20);
            this.tname_textbox.TabIndex = 5;
            // 
            // tid_textbox
            // 
            this.tid_textbox.Location = new System.Drawing.Point(120, 15);
            this.tid_textbox.Name = "tid_textbox";
            this.tid_textbox.Size = new System.Drawing.Size(182, 20);
            this.tid_textbox.TabIndex = 4;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(67, 117);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(30, 13);
            this.label11.TabIndex = 3;
            this.label11.Text = "DOB";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(62, 84);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(42, 13);
            this.label10.TabIndex = 2;
            this.label10.Text = "Gender";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(62, 52);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(35, 13);
            this.label9.TabIndex = 1;
            this.label9.Text = "Name";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(36, 18);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(61, 13);
            this.label8.TabIndex = 0;
            this.label8.Text = "Teacher ID";
            this.label8.Click += new System.EventHandler(this.label8_Click);
            // 
            // teacher_dataGridView
            // 
            this.teacher_dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.teacher_dataGridView.Location = new System.Drawing.Point(1, 0);
            this.teacher_dataGridView.Name = "teacher_dataGridView";
            this.teacher_dataGridView.Size = new System.Drawing.Size(486, 214);
            this.teacher_dataGridView.TabIndex = 0;
            this.teacher_dataGridView.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.teacher_dataGridView_CellClick);
            this.teacher_dataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.teacher_dataGridView_CellContentClick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(493, 450);
            this.Controls.Add(this.Teacher_tabControl);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Form1";
            this.Text = "Student and Teacher Forms";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.Teacher_tabControl.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.student_dataGridView)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.teacher_dataGridView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl Teacher_tabControl;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton female_radioButton;
        private System.Windows.Forms.RadioButton male_radioButton;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox gpa_textbox;
        private System.Windows.Forms.ComboBox major_combobox;
        private System.Windows.Forms.TextBox name_textbox;
        private System.Windows.Forms.TextBox sid_textbox;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button delete_btn;
        private System.Windows.Forms.Button update_btn;
        private System.Windows.Forms.Button insert_btn;
        private System.Windows.Forms.Button clear_btn;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DataGridView student_dataGridView;
        private System.Windows.Forms.ComboBox advisor_combobox;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dob_datepicker;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox tname_textbox;
        private System.Windows.Forms.TextBox tid_textbox;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.DateTimePicker tdob_datepicker;
        private System.Windows.Forms.RadioButton tfemale_radioButton;
        private System.Windows.Forms.RadioButton tmale_radioButton;
        private System.Windows.Forms.Button tInsert;
        private System.Windows.Forms.Button tClear;
        private System.Windows.Forms.Button tDelete;
        private System.Windows.Forms.Button tUpdate;
        private System.Windows.Forms.DataGridView teacher_dataGridView;
    }
}

