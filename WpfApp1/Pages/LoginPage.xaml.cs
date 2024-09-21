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
using WpfApp1.db;

namespace WpfApp1.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        static MainWindow _mainWindow;
        public LoginPage(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainWindow = mainWindow;
        }

        private void ButtonLogIn_Click(object sender, RoutedEventArgs e)
        {
            string login = txtLogin.Text;
            string password = txtPassword.Password;

            var user = ConnectionDB.db.logins.FirstOrDefault(log => log.login == login && log.passwod == password);

            if(user == null)
            {
                var tempUser = new users() { Name = "123" };
                var tempLogin = new logins()
                {
                    login = "123",
                    passwod = "123",
                    users = tempUser
                };
                ConnectionDB.db.users.Add(tempUser);
                ConnectionDB.db.logins.Add(tempLogin);
                ConnectionDB.db.SaveChanges();
                MessageBox.Show("Неверный логин или пароль");
                return;
            }

            ConnectionDB.user = user.users;
            _mainWindow.MainFrame.NavigationService.Navigate(new UserPage());
       
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            _mainWindow.MainFrame.NavigationService.Navigate(new SignUpPage());
        }
    }
}
