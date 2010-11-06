using FluentNHibernate.Mapping;
using TwitterClone.Entity;

namespace TwitterClone.Mapping
{
    public class UserMap : ClassMap<User>
    {
        public UserMap()
        {
            Table("Users");
            Id(x => x.Id, "ID");
            Map(x => x.Handle, "Handle");
            Map(x => x.FirstName, "FirstName");
            Map(x => x.LastName, "LastName");
            Map(x => x.Bio, "Bio");
            Map(x => x.Url, "Url");

            HasMany(x => x.Posts).Access.ReadOnlyPropertyThroughCamelCaseField().KeyColumn("UserID").Cascade.All();
            HasManyToMany(x => x.Following).Access.ReadOnlyPropertyThroughCamelCaseField().Table("UserToUser").ParentKeyColumn("FollowerId").ChildKeyColumn("FollowingId");
            HasManyToMany(x => x.Followers).Access.ReadOnlyPropertyThroughCamelCaseField().Table("UserToUser").ParentKeyColumn("FollowingId").ChildKeyColumn("FollowerId").Inverse();
        }
    }
}
