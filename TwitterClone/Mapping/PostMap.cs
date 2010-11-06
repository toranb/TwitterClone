using FluentNHibernate.Mapping;
using TwitterClone.Entity;

namespace TwitterClone.Mapping
{
    public class PostMap : ClassMap<Post>
    {
        public PostMap()
        {
            Table("Posts");
            Id(x => x.Id, "ID");
            Map(x => x.PublishDate, "PublishDate");
            Map(x => x.Body, "Body");

            References(x => x.PostedBy, "UserId").Not.Nullable();
        }
    }
}
