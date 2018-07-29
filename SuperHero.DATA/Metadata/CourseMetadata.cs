using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperHero.DATA
{
    public class CourseMetadata
    {
        //public int CourseID { get; set; }
        [Required(ErrorMessage = "* Required")]
        [StringLength(50, ErrorMessage = "* Max 50 characters")]
        [Display(Name="Course")]
        public string Name { get; set; }
        public string Description { get; set; }
    }
    [MetadataType(typeof(CourseMetadata))]
    public partial class Course { }
}
