﻿namespace WinGlyphics
{
    partial class WinGlyphics
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

        #region Windows Form Designer generated codeString

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the codeString editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuMain = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.newToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.openGlyphicsFileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.saveGlyphicsFileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.importToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gridToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modelToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exportToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.meshDAEToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sterelithographySTLToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.animationGIFToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.serializedRectsTXTToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.serializedRectsLimit255TXTToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.copySerializedRectsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.copySerializedRectsLimit255ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.copyImageToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.copyWebGLToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.textBoxMain = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.textBoxSerializedRects = new System.Windows.Forms.TextBox();
            this.buttonExecute = new System.Windows.Forms.Button();
            this.labelSerializedRects = new System.Windows.Forms.Label();
            this.labelSerializedRectsLimit255 = new System.Windows.Forms.Label();
            this.textBoxSerializedRectsLimit255 = new System.Windows.Forms.TextBox();
            this.comboBoxGly = new System.Windows.Forms.ComboBox();
            this.labelTokens = new System.Windows.Forms.Label();
            this.textBoxTokens = new System.Windows.Forms.TextBox();
            this.labelRects = new System.Windows.Forms.Label();
            this.textBoxRects = new System.Windows.Forms.TextBox();
            this.labelQuads = new System.Windows.Forms.Label();
            this.textBoxQuads = new System.Windows.Forms.TextBox();
            this.labelTriangles = new System.Windows.Forms.Label();
            this.textBoxTriangles = new System.Windows.Forms.TextBox();
            this.labelIndexedTriangles = new System.Windows.Forms.Label();
            this.textBoxIndexedTriangles = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxJSON = new System.Windows.Forms.TextBox();
            this.buttonCopyTriangles = new System.Windows.Forms.Button();
            this.buttonCopySerialized255 = new System.Windows.Forms.Button();
            this.menuMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // menuMain
            // 
            this.menuMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.editToolStripMenuItem});
            this.menuMain.Location = new System.Drawing.Point(0, 0);
            this.menuMain.Name = "menuMain";
            this.menuMain.Size = new System.Drawing.Size(1481, 24);
            this.menuMain.TabIndex = 0;
            this.menuMain.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.newToolStripMenuItem,
            this.toolStripSeparator3,
            this.openGlyphicsFileToolStripMenuItem,
            this.saveGlyphicsFileToolStripMenuItem,
            this.toolStripSeparator1,
            this.importToolStripMenuItem,
            this.exportToolStripMenuItem,
            this.toolStripSeparator2,
            this.exitToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "&File";
            // 
            // newToolStripMenuItem
            // 
            this.newToolStripMenuItem.Name = "newToolStripMenuItem";
            this.newToolStripMenuItem.Size = new System.Drawing.Size(172, 22);
            this.newToolStripMenuItem.Text = "&New";
            this.newToolStripMenuItem.Click += new System.EventHandler(this.newToolStripMenuItem_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(169, 6);
            // 
            // openGlyphicsFileToolStripMenuItem
            // 
            this.openGlyphicsFileToolStripMenuItem.Name = "openGlyphicsFileToolStripMenuItem";
            this.openGlyphicsFileToolStripMenuItem.Size = new System.Drawing.Size(172, 22);
            this.openGlyphicsFileToolStripMenuItem.Text = "&Open Glyphics File";
            this.openGlyphicsFileToolStripMenuItem.Click += new System.EventHandler(this.openGlyphicsFileToolStripMenuItem_Click);
            // 
            // saveGlyphicsFileToolStripMenuItem
            // 
            this.saveGlyphicsFileToolStripMenuItem.Name = "saveGlyphicsFileToolStripMenuItem";
            this.saveGlyphicsFileToolStripMenuItem.Size = new System.Drawing.Size(172, 22);
            this.saveGlyphicsFileToolStripMenuItem.Text = "&Save Glyphics File";
            this.saveGlyphicsFileToolStripMenuItem.Click += new System.EventHandler(this.saveGlyphicsFileToolStripMenuItem_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(169, 6);
            // 
            // importToolStripMenuItem
            // 
            this.importToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gridToolStripMenuItem,
            this.modelToolStripMenuItem});
            this.importToolStripMenuItem.Name = "importToolStripMenuItem";
            this.importToolStripMenuItem.Size = new System.Drawing.Size(172, 22);
            this.importToolStripMenuItem.Text = "&Import";
            // 
            // gridToolStripMenuItem
            // 
            this.gridToolStripMenuItem.Name = "gridToolStripMenuItem";
            this.gridToolStripMenuItem.Size = new System.Drawing.Size(108, 22);
            this.gridToolStripMenuItem.Text = "Grid";
            this.gridToolStripMenuItem.Click += new System.EventHandler(this.gridToolStripMenuItem_Click);
            // 
            // modelToolStripMenuItem
            // 
            this.modelToolStripMenuItem.Name = "modelToolStripMenuItem";
            this.modelToolStripMenuItem.Size = new System.Drawing.Size(108, 22);
            this.modelToolStripMenuItem.Text = "Model";
            this.modelToolStripMenuItem.Click += new System.EventHandler(this.modelToolStripMenuItem_Click);
            // 
            // exportToolStripMenuItem
            // 
            this.exportToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem1,
            this.toolStripMenuItem2,
            this.meshDAEToolStripMenuItem,
            this.sterelithographySTLToolStripMenuItem,
            this.animationGIFToolStripMenuItem,
            this.serializedRectsTXTToolStripMenuItem,
            this.serializedRectsLimit255TXTToolStripMenuItem});
            this.exportToolStripMenuItem.Name = "exportToolStripMenuItem";
            this.exportToolStripMenuItem.Size = new System.Drawing.Size(172, 22);
            this.exportToolStripMenuItem.Text = "&Export";
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(232, 22);
            this.toolStripMenuItem1.Text = "Save Oblique PNG";
            // 
            // toolStripMenuItem2
            // 
            this.toolStripMenuItem2.Name = "toolStripMenuItem2";
            this.toolStripMenuItem2.Size = new System.Drawing.Size(232, 22);
            this.toolStripMenuItem2.Text = "Save DRect PNG";
            // 
            // meshDAEToolStripMenuItem
            // 
            this.meshDAEToolStripMenuItem.Name = "meshDAEToolStripMenuItem";
            this.meshDAEToolStripMenuItem.Size = new System.Drawing.Size(232, 22);
            this.meshDAEToolStripMenuItem.Text = "Mesh .DAE";
            // 
            // sterelithographySTLToolStripMenuItem
            // 
            this.sterelithographySTLToolStripMenuItem.Name = "sterelithographySTLToolStripMenuItem";
            this.sterelithographySTLToolStripMenuItem.Size = new System.Drawing.Size(232, 22);
            this.sterelithographySTLToolStripMenuItem.Text = "Sterelithography .STL";
            // 
            // animationGIFToolStripMenuItem
            // 
            this.animationGIFToolStripMenuItem.Name = "animationGIFToolStripMenuItem";
            this.animationGIFToolStripMenuItem.Size = new System.Drawing.Size(232, 22);
            this.animationGIFToolStripMenuItem.Text = "Animation .GIF";
            // 
            // serializedRectsTXTToolStripMenuItem
            // 
            this.serializedRectsTXTToolStripMenuItem.Name = "serializedRectsTXTToolStripMenuItem";
            this.serializedRectsTXTToolStripMenuItem.Size = new System.Drawing.Size(232, 22);
            this.serializedRectsTXTToolStripMenuItem.Text = "Serialized Rects .TXT";
            // 
            // serializedRectsLimit255TXTToolStripMenuItem
            // 
            this.serializedRectsLimit255TXTToolStripMenuItem.Name = "serializedRectsLimit255TXTToolStripMenuItem";
            this.serializedRectsLimit255TXTToolStripMenuItem.Size = new System.Drawing.Size(232, 22);
            this.serializedRectsLimit255TXTToolStripMenuItem.Text = "Serialized Rects Limit 255 .TXT";
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(169, 6);
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(172, 22);
            this.exitToolStripMenuItem.Text = "E&xit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // editToolStripMenuItem
            // 
            this.editToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.copySerializedRectsToolStripMenuItem,
            this.copySerializedRectsLimit255ToolStripMenuItem,
            this.copyImageToolStripMenuItem,
            this.copyWebGLToolStripMenuItem});
            this.editToolStripMenuItem.Name = "editToolStripMenuItem";
            this.editToolStripMenuItem.Size = new System.Drawing.Size(39, 20);
            this.editToolStripMenuItem.Text = "&Edit";
            // 
            // copySerializedRectsToolStripMenuItem
            // 
            this.copySerializedRectsToolStripMenuItem.Name = "copySerializedRectsToolStripMenuItem";
            this.copySerializedRectsToolStripMenuItem.Size = new System.Drawing.Size(236, 22);
            this.copySerializedRectsToolStripMenuItem.Text = "&Copy Serialized Rects";
            this.copySerializedRectsToolStripMenuItem.Click += new System.EventHandler(this.copySerializedRectsToolStripMenuItem_Click);
            // 
            // copySerializedRectsLimit255ToolStripMenuItem
            // 
            this.copySerializedRectsLimit255ToolStripMenuItem.Name = "copySerializedRectsLimit255ToolStripMenuItem";
            this.copySerializedRectsLimit255ToolStripMenuItem.Size = new System.Drawing.Size(236, 22);
            this.copySerializedRectsLimit255ToolStripMenuItem.Text = "Copy Serialized Rects Limit 255";
            this.copySerializedRectsLimit255ToolStripMenuItem.Click += new System.EventHandler(this.copySerializedRectsLimit255ToolStripMenuItem_Click);
            // 
            // copyImageToolStripMenuItem
            // 
            this.copyImageToolStripMenuItem.Name = "copyImageToolStripMenuItem";
            this.copyImageToolStripMenuItem.Size = new System.Drawing.Size(236, 22);
            this.copyImageToolStripMenuItem.Text = "Copy Image";
            // 
            // copyWebGLToolStripMenuItem
            // 
            this.copyWebGLToolStripMenuItem.Name = "copyWebGLToolStripMenuItem";
            this.copyWebGLToolStripMenuItem.Size = new System.Drawing.Size(236, 22);
            this.copyWebGLToolStripMenuItem.Text = "Copy WebGL";
            this.copyWebGLToolStripMenuItem.Click += new System.EventHandler(this.copyWebGLToolStripMenuItem_Click);
            // 
            // textBoxMain
            // 
            this.textBoxMain.Location = new System.Drawing.Point(13, 61);
            this.textBoxMain.Multiline = true;
            this.textBoxMain.Name = "textBoxMain";
            this.textBoxMain.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.textBoxMain.Size = new System.Drawing.Size(276, 404);
            this.textBoxMain.TabIndex = 1;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(296, 61);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(776, 784);
            this.pictureBox1.TabIndex = 2;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            this.pictureBox1.Paint += new System.Windows.Forms.PaintEventHandler(this.pictureBox1_Paint);
            // 
            // textBoxSerializedRects
            // 
            this.textBoxSerializedRects.Location = new System.Drawing.Point(1075, 70);
            this.textBoxSerializedRects.Multiline = true;
            this.textBoxSerializedRects.Name = "textBoxSerializedRects";
            this.textBoxSerializedRects.ReadOnly = true;
            this.textBoxSerializedRects.Size = new System.Drawing.Size(394, 92);
            this.textBoxSerializedRects.TabIndex = 3;
            // 
            // buttonExecute
            // 
            this.buttonExecute.Location = new System.Drawing.Point(13, 28);
            this.buttonExecute.Name = "buttonExecute";
            this.buttonExecute.Size = new System.Drawing.Size(75, 23);
            this.buttonExecute.TabIndex = 4;
            this.buttonExecute.Text = "Execute";
            this.buttonExecute.UseVisualStyleBackColor = true;
            this.buttonExecute.Click += new System.EventHandler(this.buttonExecute_Click);
            // 
            // labelSerializedRects
            // 
            this.labelSerializedRects.AutoSize = true;
            this.labelSerializedRects.Location = new System.Drawing.Point(1078, 54);
            this.labelSerializedRects.Name = "labelSerializedRects";
            this.labelSerializedRects.Size = new System.Drawing.Size(83, 13);
            this.labelSerializedRects.TabIndex = 5;
            this.labelSerializedRects.Text = "Serialized Rects";
            // 
            // labelSerializedRectsLimit255
            // 
            this.labelSerializedRectsLimit255.AutoSize = true;
            this.labelSerializedRectsLimit255.Location = new System.Drawing.Point(1075, 174);
            this.labelSerializedRectsLimit255.Name = "labelSerializedRectsLimit255";
            this.labelSerializedRectsLimit255.Size = new System.Drawing.Size(130, 13);
            this.labelSerializedRectsLimit255.TabIndex = 6;
            this.labelSerializedRectsLimit255.Text = "Serialized Rects (limit 255)";
            // 
            // textBoxSerializedRectsLimit255
            // 
            this.textBoxSerializedRectsLimit255.Location = new System.Drawing.Point(1078, 190);
            this.textBoxSerializedRectsLimit255.Multiline = true;
            this.textBoxSerializedRectsLimit255.Name = "textBoxSerializedRectsLimit255";
            this.textBoxSerializedRectsLimit255.ReadOnly = true;
            this.textBoxSerializedRectsLimit255.Size = new System.Drawing.Size(391, 80);
            this.textBoxSerializedRectsLimit255.TabIndex = 7;
            // 
            // comboBoxGly
            // 
            this.comboBoxGly.FormattingEnabled = true;
            this.comboBoxGly.Location = new System.Drawing.Point(94, 30);
            this.comboBoxGly.Name = "comboBoxGly";
            this.comboBoxGly.Size = new System.Drawing.Size(1375, 21);
            this.comboBoxGly.TabIndex = 8;
            this.comboBoxGly.SelectedIndexChanged += new System.EventHandler(this.comboBoxGly_SelectedIndexChanged);
            // 
            // labelTokens
            // 
            this.labelTokens.AutoSize = true;
            this.labelTokens.Location = new System.Drawing.Point(12, 468);
            this.labelTokens.Name = "labelTokens";
            this.labelTokens.Size = new System.Drawing.Size(43, 13);
            this.labelTokens.TabIndex = 9;
            this.labelTokens.Text = "Tokens";
            // 
            // textBoxTokens
            // 
            this.textBoxTokens.Location = new System.Drawing.Point(12, 484);
            this.textBoxTokens.Multiline = true;
            this.textBoxTokens.Name = "textBoxTokens";
            this.textBoxTokens.ReadOnly = true;
            this.textBoxTokens.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.textBoxTokens.Size = new System.Drawing.Size(277, 361);
            this.textBoxTokens.TabIndex = 10;
            // 
            // labelRects
            // 
            this.labelRects.AutoSize = true;
            this.labelRects.Location = new System.Drawing.Point(1078, 273);
            this.labelRects.Name = "labelRects";
            this.labelRects.Size = new System.Drawing.Size(35, 13);
            this.labelRects.TabIndex = 11;
            this.labelRects.Text = "Rects";
            // 
            // textBoxRects
            // 
            this.textBoxRects.Location = new System.Drawing.Point(1078, 289);
            this.textBoxRects.Multiline = true;
            this.textBoxRects.Name = "textBoxRects";
            this.textBoxRects.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.textBoxRects.Size = new System.Drawing.Size(391, 92);
            this.textBoxRects.TabIndex = 12;
            // 
            // labelQuads
            // 
            this.labelQuads.AutoSize = true;
            this.labelQuads.Location = new System.Drawing.Point(1078, 384);
            this.labelQuads.Name = "labelQuads";
            this.labelQuads.Size = new System.Drawing.Size(38, 13);
            this.labelQuads.TabIndex = 13;
            this.labelQuads.Text = "Quads";
            // 
            // textBoxQuads
            // 
            this.textBoxQuads.Location = new System.Drawing.Point(1081, 400);
            this.textBoxQuads.Multiline = true;
            this.textBoxQuads.Name = "textBoxQuads";
            this.textBoxQuads.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.textBoxQuads.Size = new System.Drawing.Size(388, 104);
            this.textBoxQuads.TabIndex = 14;
            // 
            // labelTriangles
            // 
            this.labelTriangles.AutoSize = true;
            this.labelTriangles.Location = new System.Drawing.Point(1081, 509);
            this.labelTriangles.Name = "labelTriangles";
            this.labelTriangles.Size = new System.Drawing.Size(50, 13);
            this.labelTriangles.TabIndex = 15;
            this.labelTriangles.Text = "Triangles";
            // 
            // textBoxTriangles
            // 
            this.textBoxTriangles.Location = new System.Drawing.Point(1081, 525);
            this.textBoxTriangles.Multiline = true;
            this.textBoxTriangles.Name = "textBoxTriangles";
            this.textBoxTriangles.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.textBoxTriangles.Size = new System.Drawing.Size(388, 108);
            this.textBoxTriangles.TabIndex = 16;
            // 
            // labelIndexedTriangles
            // 
            this.labelIndexedTriangles.AutoSize = true;
            this.labelIndexedTriangles.Location = new System.Drawing.Point(1081, 636);
            this.labelIndexedTriangles.Name = "labelIndexedTriangles";
            this.labelIndexedTriangles.Size = new System.Drawing.Size(91, 13);
            this.labelIndexedTriangles.TabIndex = 17;
            this.labelIndexedTriangles.Text = "Indexed Triangles";
            // 
            // textBoxIndexedTriangles
            // 
            this.textBoxIndexedTriangles.Location = new System.Drawing.Point(1081, 652);
            this.textBoxIndexedTriangles.Multiline = true;
            this.textBoxIndexedTriangles.Name = "textBoxIndexedTriangles";
            this.textBoxIndexedTriangles.ReadOnly = true;
            this.textBoxIndexedTriangles.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.textBoxIndexedTriangles.Size = new System.Drawing.Size(385, 104);
            this.textBoxIndexedTriangles.TabIndex = 18;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(1078, 759);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 19;
            this.label1.Text = "JSON";
            // 
            // textBoxJSON
            // 
            this.textBoxJSON.Location = new System.Drawing.Point(1081, 775);
            this.textBoxJSON.Multiline = true;
            this.textBoxJSON.Name = "textBoxJSON";
            this.textBoxJSON.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.textBoxJSON.Size = new System.Drawing.Size(388, 165);
            this.textBoxJSON.TabIndex = 20;
            // 
            // buttonCopyTriangles
            // 
            this.buttonCopyTriangles.Location = new System.Drawing.Point(1178, 631);
            this.buttonCopyTriangles.Name = "buttonCopyTriangles";
            this.buttonCopyTriangles.Size = new System.Drawing.Size(99, 23);
            this.buttonCopyTriangles.TabIndex = 21;
            this.buttonCopyTriangles.Text = "Copy Triangles";
            this.buttonCopyTriangles.UseVisualStyleBackColor = true;
            this.buttonCopyTriangles.Click += new System.EventHandler(this.buttonCopyTriangles_Click);
            // 
            // buttonCopySerialized255
            // 
            this.buttonCopySerialized255.Location = new System.Drawing.Point(1211, 162);
            this.buttonCopySerialized255.Name = "buttonCopySerialized255";
            this.buttonCopySerialized255.Size = new System.Drawing.Size(75, 25);
            this.buttonCopySerialized255.TabIndex = 22;
            this.buttonCopySerialized255.Text = "Copy";
            this.buttonCopySerialized255.UseVisualStyleBackColor = true;
            this.buttonCopySerialized255.Click += new System.EventHandler(this.buttonCopySerialized255_Click);
            // 
            // WinGlyphics
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1481, 952);
            this.Controls.Add(this.buttonCopySerialized255);
            this.Controls.Add(this.buttonCopyTriangles);
            this.Controls.Add(this.textBoxJSON);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBoxIndexedTriangles);
            this.Controls.Add(this.labelIndexedTriangles);
            this.Controls.Add(this.textBoxTriangles);
            this.Controls.Add(this.labelTriangles);
            this.Controls.Add(this.textBoxQuads);
            this.Controls.Add(this.labelQuads);
            this.Controls.Add(this.textBoxRects);
            this.Controls.Add(this.labelRects);
            this.Controls.Add(this.textBoxTokens);
            this.Controls.Add(this.labelTokens);
            this.Controls.Add(this.comboBoxGly);
            this.Controls.Add(this.textBoxSerializedRectsLimit255);
            this.Controls.Add(this.labelSerializedRectsLimit255);
            this.Controls.Add(this.labelSerializedRects);
            this.Controls.Add(this.buttonExecute);
            this.Controls.Add(this.textBoxSerializedRects);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.textBoxMain);
            this.Controls.Add(this.menuMain);
            this.MainMenuStrip = this.menuMain;
            this.Name = "WinGlyphics";
            this.Text = "WinGlyphics";
            this.Load += new System.EventHandler(this.WinGlyphics_Load);
            this.menuMain.ResumeLayout(false);
            this.menuMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuMain;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem importToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gridToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modelToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.TextBox textBoxMain;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TextBox textBoxSerializedRects;
        private System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem copySerializedRectsToolStripMenuItem;
        private System.Windows.Forms.Button buttonExecute;
        private System.Windows.Forms.Label labelSerializedRects;
        private System.Windows.Forms.Label labelSerializedRectsLimit255;
        private System.Windows.Forms.TextBox textBoxSerializedRectsLimit255;
        private System.Windows.Forms.ToolStripMenuItem copySerializedRectsLimit255ToolStripMenuItem;
        private System.Windows.Forms.ComboBox comboBoxGly;
        private System.Windows.Forms.Label labelTokens;
        private System.Windows.Forms.TextBox textBoxTokens;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.Label labelRects;
        private System.Windows.Forms.TextBox textBoxRects;
        private System.Windows.Forms.Label labelQuads;
        private System.Windows.Forms.TextBox textBoxQuads;
        private System.Windows.Forms.Label labelTriangles;
        private System.Windows.Forms.TextBox textBoxTriangles;
        private System.Windows.Forms.ToolStripMenuItem openGlyphicsFileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem saveGlyphicsFileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exportToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem copyImageToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem meshDAEToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sterelithographySTLToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem animationGIFToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem serializedRectsTXTToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem serializedRectsLimit255TXTToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem newToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripMenuItem copyWebGLToolStripMenuItem;
        private System.Windows.Forms.Label labelIndexedTriangles;
        private System.Windows.Forms.TextBox textBoxIndexedTriangles;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxJSON;
        private System.Windows.Forms.Button buttonCopyTriangles;
        private System.Windows.Forms.Button buttonCopySerialized255;
    }
}

