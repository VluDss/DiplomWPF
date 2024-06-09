using System.Windows;
using WpfApp2.Common;

namespace WpfApp2.ViewModel
{
    public class NavigationViewModel : BaseInpc
    {
        private object _currentView;
        public object CurrentView
        {
            get { return _currentView; }
            set { _currentView = value; RaisePropertyChanged(); }
        }

        public RelayCommand ReferenceBookCommand { get; }
        public RelayCommand MembersCommand { get; }
        public RelayCommand RaceCommand { get; }
        public RelayCommand ExitCommand { get; }

        private void ReferenceBook(object obj) => CurrentView = new ReferenceBookViewModel();
        private void Members(object obj) => CurrentView = new MembersViewModel();
        private void Races(object obj) => CurrentView = new RaceViewModel();
        private void Exit(object obj) => Application.Current.Shutdown();

        public NavigationViewModel()
        {
            ReferenceBookCommand = new RelayCommand(ReferenceBook);
            MembersCommand = new RelayCommand(Members);
            RaceCommand = new RelayCommand(Races);
            ExitCommand = new RelayCommand(Exit);

            // Startup Page
            CurrentView = new ReferenceBookViewModel();
        }
    }
}
