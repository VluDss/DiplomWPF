using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using WpfApp2.Common;
using WpfApp2.Model;
using WpfApp2.Windows;

namespace WpfApp2.ViewModel
{
    public class MembersViewModel : BaseInpc
    {
        public ObservableCollection<Member> Members { get; }

        private readonly ApplicationContext db = new ApplicationContext();

        public MembersViewModel()
        { 
            db.Members.Load();
            Members = db.Members.Local.ToObservableCollection();

            AddMember = new RelayCommand(AddMemberExecute);
        }

        public RelayCommand AddMember { get; }
        private void AddMemberExecute()
        {
            MemberAddWindow memberAddWindow = new MemberAddWindow(new Member());
            if (memberAddWindow.ShowDialog() == true)
            {
                Member member = memberAddWindow.Member;
                db.Members.Add(member);
                db.SaveChanges();
            }
        }
    }
}
