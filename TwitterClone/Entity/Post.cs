using System;
using System.Collections.Generic;

namespace TwitterClone.Entity
{
    public class Post
    {
        public virtual int Id { get; set; }
        public virtual DateTime PublishDate { get; set; }
        public virtual string Body { get; set; }
        public virtual User PostedBy { get; set; }

        private readonly IList<string> errors = new List<string>();
        public virtual IEnumerable<string> Errors { get { return errors; } }

        public virtual bool HasValidLength()
        {
            if (Body.Length > 140)
            {
                errors.Add("Body must be 140 characters or less.");
                return false;
            }
            return true;
        }
    }
}