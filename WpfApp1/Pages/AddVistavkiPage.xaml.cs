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
    /// Логика взаимодействия для EditVistavkiPage.xaml
    /// </summary>
    public partial class EditVistavkiPage : Page
    {
        public EditVistavkiPage()
        {
            InitializeComponent();
        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {
            var date = Convert.ToDateTime(txtDate.Text);
            var location = txtLocation.Text;
            var awards = txtAwards.Text;

            var vistavka = ConnectionDB.db.Vistavki.FirstOrDefault(id => id.date == date && id.location == location && id.location == location);

            var tempVistavka = new Vistavki()
            {
                date = date,
                location = location,
                awards = awards
            };

            ConnectionDB.db.Vistavki.Add(tempVistavka);
            ConnectionDB.db.SaveChanges();
            MessageBox.Show("Регистрация выставки прошла успешно");
            NavigationService.Navigate(new UserPage());
            return;
        }
    }
}
