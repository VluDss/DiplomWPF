namespace WpfApp2.Model
{
    public class Topic
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int ReferenceBookId { get; set; }
        public ReferenceBook ReferenceBook { get; set; }
    }
}
