namespace DiemDanhSinhVien.Views
{
    partial class frmThemnguoidung
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
            this.cbo_nhomnguoidung = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dgv_Nguoidung = new System.Windows.Forms.DataGridView();
            this.dgv_nguoidungnhomnguoidung = new System.Windows.Forms.DataGridView();
            this.btnThemvao = new System.Windows.Forms.Button();
            this.btnLayra = new System.Windows.Forms.Button();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_Nguoidung)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_nguoidungnhomnguoidung)).BeginInit();
            this.SuspendLayout();
            // 
            // cbo_nhomnguoidung
            // 
            this.cbo_nhomnguoidung.FormattingEnabled = true;
            this.cbo_nhomnguoidung.Location = new System.Drawing.Point(503, 22);
            this.cbo_nhomnguoidung.Name = "cbo_nhomnguoidung";
            this.cbo_nhomnguoidung.Size = new System.Drawing.Size(229, 21);
            this.cbo_nhomnguoidung.TabIndex = 0;
            this.cbo_nhomnguoidung.SelectedIndexChanged += new System.EventHandler(this.cbo_nhomnguoidung_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(383, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(114, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tên nhóm người dùng:";
            // 
            // dgv_Nguoidung
            // 
            this.dgv_Nguoidung.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_Nguoidung.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column4,
            this.Column5});
            this.dgv_Nguoidung.Location = new System.Drawing.Point(11, 57);
            this.dgv_Nguoidung.Name = "dgv_Nguoidung";
            this.dgv_Nguoidung.Size = new System.Drawing.Size(332, 288);
            this.dgv_Nguoidung.TabIndex = 3;
            this.dgv_Nguoidung.SelectionChanged += new System.EventHandler(this.dgv_Nguoidung_SelectionChanged);
            // 
            // dgv_nguoidungnhomnguoidung
            // 
            this.dgv_nguoidungnhomnguoidung.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_nguoidungnhomnguoidung.Location = new System.Drawing.Point(386, 57);
            this.dgv_nguoidungnhomnguoidung.Name = "dgv_nguoidungnhomnguoidung";
            this.dgv_nguoidungnhomnguoidung.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dgv_nguoidungnhomnguoidung.Size = new System.Drawing.Size(346, 288);
            this.dgv_nguoidungnhomnguoidung.TabIndex = 4;
            this.dgv_nguoidungnhomnguoidung.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_nguoidungnhomnguoidung_CellContentClick);
            this.dgv_nguoidungnhomnguoidung.SelectionChanged += new System.EventHandler(this.dgv_nguoidungnhomnguoidung_SelectionChanged);
            // 
            // btnThemvao
            // 
            this.btnThemvao.Location = new System.Drawing.Point(349, 149);
            this.btnThemvao.Name = "btnThemvao";
            this.btnThemvao.Size = new System.Drawing.Size(29, 25);
            this.btnThemvao.TabIndex = 5;
            this.btnThemvao.Text = ">>";
            this.btnThemvao.UseVisualStyleBackColor = true;
            this.btnThemvao.Click += new System.EventHandler(this.btnThemvao_Click);
            // 
            // btnLayra
            // 
            this.btnLayra.Location = new System.Drawing.Point(349, 180);
            this.btnLayra.Name = "btnLayra";
            this.btnLayra.Size = new System.Drawing.Size(29, 25);
            this.btnLayra.TabIndex = 6;
            this.btnLayra.Text = "<<";
            this.btnLayra.UseVisualStyleBackColor = true;
            this.btnLayra.Click += new System.EventHandler(this.btnLayra_Click);
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "TenDangNhap";
            this.Column4.HeaderText = "Tên đăng nhập";
            this.Column4.Name = "Column4";
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "MatKhau";
            this.Column5.HeaderText = "Mật khẩu";
            this.Column5.Name = "Column5";
            // 
            // frmThemnguoidung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(744, 357);
            this.Controls.Add(this.btnLayra);
            this.Controls.Add(this.btnThemvao);
            this.Controls.Add(this.dgv_nguoidungnhomnguoidung);
            this.Controls.Add(this.dgv_Nguoidung);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbo_nhomnguoidung);
            this.Name = "frmThemnguoidung";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Thêm người dùng vào nhóm";
            ((System.ComponentModel.ISupportInitialize)(this.dgv_Nguoidung)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_nguoidungnhomnguoidung)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbo_nhomnguoidung;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgv_Nguoidung;
        private System.Windows.Forms.DataGridView dgv_nguoidungnhomnguoidung;
        private System.Windows.Forms.Button btnThemvao;
        private System.Windows.Forms.Button btnLayra;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
    }
}