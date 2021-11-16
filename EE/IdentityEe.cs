namespace EE
{
    public class IdentityEe
    {
        public int Id { get; set; }

        public object Clone()
        {
            return this.MemberwiseClone();
        }
    }
}
