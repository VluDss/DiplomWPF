using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using WpfApp2.Common;
using WpfApp2.Model;

namespace WpfApp2.ViewModel
{
    public class RaceViewModel : BaseInpc
    {
        public ObservableCollection<Race> Races { get; }
        public List<Member> MembersName { get; }

        public ObservableCollection<RaceMember> _raceMembers;
        public ObservableCollection<RaceMember> RaceMembers { get => _raceMembers; set => Set(ref _raceMembers, value); }

        private Race _selectedRace;
        public Race SelectedRace { get => _selectedRace; set => Set(ref _selectedRace, value); }

        private readonly ApplicationContext db = new ApplicationContext();
        MembersViewModel MemberContext = new MembersViewModel();

        public RaceViewModel()
        {
            db.Races.Load();
            Races = db.Races.Local.ToObservableCollection();
            MembersName = MemberContext.Members.ToList();

            AddMember = new RelayCommand<string>(AddMemberExecute);
        }

        protected override void OnPropertyChanged(string propertyName, object oldValue, object newValue)
        {
            base.OnPropertyChanged(propertyName, oldValue, newValue);

            if(propertyName == nameof(SelectedRace))
                RaceMembers = new(db.RaceMembers.Where(t => t.RaceId == SelectedRace.Id));
        }

        public RelayCommand<string> AddMember { get; }
        private void AddMemberExecute(string name)
        {
            db.RaceMembers.Add(new RaceMember() {RaceId = SelectedRace.Id, Name = name});
            db.SaveChanges();
        }
    }
}
