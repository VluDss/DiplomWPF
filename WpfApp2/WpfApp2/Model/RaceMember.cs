namespace WpfApp2.Model
{
    public class RaceMember
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int RaceId { get; set; }
        public Race Race { get; set; }
    }
}
