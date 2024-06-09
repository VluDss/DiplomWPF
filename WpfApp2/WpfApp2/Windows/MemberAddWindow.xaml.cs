using System.Windows;
using System.Windows.Input;
using WpfApp2.Model;

namespace WpfApp2.Windows
{
    public partial class MemberAddWindow : Window
    {
        public Member Member { get; set; }
        public MemberAddWindow(Member member)
        {
            InitializeComponent();
            Member = member;
            DataContext = Member;
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void Accept_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }
    }
}
