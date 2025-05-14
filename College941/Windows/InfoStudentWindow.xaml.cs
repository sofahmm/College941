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
    /// Логика взаимодействия для InfoStudentWindow.xaml
    /// </summary>
    public partial class InfoStudentWindow : Window
    {
        public static Sudent student = new Sudent();
        public InfoStudentWindow(Sudent student1)
        {
            InitializeComponent();
            student = student1;
            SurnameTb.Text = student.Surname;
            NameTb.Text = student.Name;
            PatronymicTb.Text = student.Patronymic;
            GroupTb.Text = student.Group.Name;
            LoginTb.Text = student.Login;
            PasswordTb.Text = student.Password;
            this.DataContext = this;
        }
    }
}
