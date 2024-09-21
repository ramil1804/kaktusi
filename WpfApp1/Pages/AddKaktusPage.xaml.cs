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
    /// Логика взаимодействия для AddKaktusPage.xaml
    /// </summary>
    public partial class AddKaktusPage : Page
    { 
        public AddKaktusPage()
        {
            InitializeComponent();
        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {
            string vid = txtVid.Text;
            var price = Convert.ToInt32(txtPrice.Text);
            var age = Convert.ToInt32(txtAge.Text);
            string proishoj = txtProishojdenie.Text;
            string instruk = txtInstructiya.Text;

            var kaktus = ConnectionDB.db.kaktusi.FirstOrDefault(id => id.Vid == vid && id.Price == price && id.Age == age && id.Proishojdenie == proishoj && id.Instrukciya == instruk);

            var tempKaktus = new kaktusi()
            {
                Vid = vid,
                Price = price,
                Age = age,
                Proishojdenie = proishoj,
                Instrukciya = instruk
            };

            ConnectionDB.db.kaktusi.Add(tempKaktus);
            ConnectionDB.db.SaveChanges();
            MessageBox.Show("Регистрация кактуса прошла успешно");
            NavigationService.Navigate(new UserPage());
            return;
        }
    }
}
