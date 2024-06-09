using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using WpfApp2.Common;
using WpfApp2.Model;

namespace WpfApp2.ViewModel
{
    public class MemberAddWindowsViewModel : BaseInpc
    {
        public List<ReferenceBook> Topics { get; }

        ReferenceBookViewModel referenceContext = new ReferenceBookViewModel();

        public MemberAddWindowsViewModel() 
        {
            Topics = referenceContext.ReferenceBooks.ToList();
        }
    }
}
