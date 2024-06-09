using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using WpfApp2.Common;
using WpfApp2.Model;

namespace WpfApp2.ViewModel
{
    public class ReferenceBookViewModel : BaseInpc
    {
        public ObservableCollection<ReferenceBook> ReferenceBooks { get; }
        public ObservableCollection<Topic> TopicsForContext { get; }

        public ObservableCollection<Topic> _topics;
        public ObservableCollection<Topic> Topics { get => _topics; set => Set(ref _topics, value); }

        private ReferenceBook _selectedReferenceBook;
        public ReferenceBook SelectedReferenceBook { get => _selectedReferenceBook; set => Set(ref _selectedReferenceBook, value); }

        private readonly ApplicationContext db = new ApplicationContext();

        public ReferenceBookViewModel()
        {
            db.ReferenceBooks.Load();
            ReferenceBooks = db.ReferenceBooks.Local.ToObservableCollection();
            TopicsForContext = db.Topics.Local.ToObservableCollection();

            AddTopic = new RelayCommand<string>(AddTopicExecute, title => !string.IsNullOrWhiteSpace(title) && SelectedReferenceBook.Id > 0);
        }

        protected override void OnPropertyChanged(string propertyName, object oldValue, object newValue)
        {
            base.OnPropertyChanged(propertyName, oldValue, newValue);

            if (propertyName == nameof(SelectedReferenceBook))
                Topics = new(db.Topics.Where(t => t.ReferenceBookId == SelectedReferenceBook.Id));

        }

        public RelayCommand<string> AddTopic { get; }
        private void AddTopicExecute(string title)
        {
            db.Topics.Add(new Topic() {ReferenceBookId = SelectedReferenceBook.Id, Title = title });
            db.SaveChanges();
        }
    }
}
