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
    /// Логика взаимодействия для EditPage.xaml
    /// </summary>
    public partial class EditPage : Page
    {
        private kaktusi kaktusi;
       
        public EditPage(kaktusi kaktus)
        {
            kaktusi = kaktus;
            InitializeComponent();
            txtVid.Text = kaktus.Vid;
            txtPrice.Text = Convert.ToString(kaktus.Price);
            txtAge.Text = Convert.ToString(kaktus.Age);
            txtProishojdenie.Text = kaktus.Proishojdenie;
            txtInstructiya.Text = kaktus.Instrukciya;
        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {                
            var editKaktus = ConnectionDB.db.kaktusi.FirstOrDefault(id => id.id_kaktus == kaktusi.id_kaktus);

            if(editKaktus != null)
            {
                 string vid = txtVid.Text;
                 var price = Convert.ToInt32(txtPrice.Text);
                 var age = Convert.ToInt32(txtAge.Text);
                 string proishoj = txtProishojdenie.Text;
                 string instruk = txtInstructiya.Text;
            
                 editKaktus.Vid = vid;
                 editKaktus.Price = price;
                 editKaktus.Age = age;
                 editKaktus.Proishojdenie = proishoj;
                 editKaktus.Instrukciya = instruk;

                 ConnectionDB.db.SaveChanges();
                 MessageBox.Show("Редактирование прошло успешно");
                 NavigationService.Navigate(new UserPage());
            }
        }
    }
}
