using College941.DataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace College941.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddStudentWindow.xaml
    /// </summary>
    public partial class AddStudentWindow : Window
    {
        public static List<Group> groups { get; set; }
        public AddStudentWindow()
        {
            InitializeComponent();
            groups = new List<Group>(DbConnection.collegeEntities.Group.ToList());
            this.DataContext = this;
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            Sudent student = new Sudent();
            student.Surname = SurnameTb.Text;
            student.Name = NameTb.Text;
            student.Patronymic = PatronymicTb.Text;
            student.Login = LoginTb.Text;
            student.Password = PasswordTb.Text;
            student.IdGroup = (groupCmb.SelectedItem as Group).ID;
            DbConnection.collegeEntities.Sudent.Add(student);
            DbConnection.collegeEntities.SaveChanges();
        }
    }
}
