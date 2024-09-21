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
    /// Логика взаимодействия для UserPage.xaml
    /// </summary>
    public partial class UserPage : Page
    {
        
        public UserPage()
        {
            InitializeComponent();
            ListKaktus.ItemsSource = ConnectionDB.db.kaktusi.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
             NavigationService.Navigate(new AddKaktusPage());
        }

        private void ListKaktus_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            NavigationService.Navigate(new EditPage(new kaktusi()));
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            kaktusi kaktusi = ListKaktus.SelectedItem as kaktusi;
            kaktusi.Vid = "";
            ConnectionDB.db.SaveChanges();
            ListKaktus.ItemsSource = ConnectionDB.db.kaktusi.ToList();
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            kaktusi kaktusi = ListKaktus.SelectedItem as kaktusi;
            ConnectionDB.db.kaktusi.Remove(kaktusi);
            ConnectionDB.db.SaveChanges();
            ListKaktus.ItemsSource = ConnectionDB.db.kaktusi.ToList();
        }
    }
}
