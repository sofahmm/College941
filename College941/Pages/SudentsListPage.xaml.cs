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
using System.Windows.Navigation;
using System.Windows.Shapes;
using College941.DataBase;
using College941.Windows;

namespace College941.Pages
{
    /// <summary>
    /// Логика взаимодействия для SudentsListPage.xaml
    /// </summary>
    public partial class SudentsListPage : Page
    {
        public static List<Sudent> students { get; set; }
        public static List<Group> groups { get; set; }
        public SudentsListPage()
        {
            InitializeComponent();
            students = new List<Sudent>(DbConnection.collegeEntities.Sudent.ToList());
            groups = new List<Group>(DbConnection.collegeEntities.Group.ToList());
            groups.Insert(0, new Group() { ID = -1, Name = "Вывести всех" });
            this.DataContext = this;
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            var searchText = SearchTb.Text;
            if(searchText == "")
                StudentsLv.ItemsSource = new List<Sudent>(DbConnection.collegeEntities.Sudent.ToList());
            else
                StudentsLv.ItemsSource = new List<Sudent>(DbConnection.collegeEntities.Sudent.
                    Where(i => i.Surname == searchText).ToList());
        }

        private void groupsCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var groupSort = groupsCmb.SelectedItem as Group;
            if(groupSort.ID != -1)
                StudentsLv.ItemsSource = new List<Sudent>(DbConnection.collegeEntities.Sudent.
                    Where(i => i.IdGroup == groupSort.ID).ToList());
            else
                StudentsLv.ItemsSource = new List<Sudent>(DbConnection.collegeEntities.Sudent.ToList());
        }

        private void StudentsLv_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var student = StudentsLv.SelectedItem as Sudent;
            InfoStudentWindow infoStudentWindow = new InfoStudentWindow(student);
            infoStudentWindow.Show();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            AddStudentWindow addStudent = new AddStudentWindow();
            addStudent.Show();
        }
    }
}
