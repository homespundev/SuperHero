using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperHero.DATA
{
    public class CourseSignUpMetadata
    {
        [Required(ErrorMessage = "* Required")]
        [StringLength(50, ErrorMessage = "* Max 50 Characters")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "* Required")]
        [StringLength(50, ErrorMessage = "* Max 50 Characters")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "* Required")]
        [StringLength(50, ErrorMessage = "* Max 50 Characters")]
        public string Email { get; set; }

        [Required(ErrorMessage = "* Required")]
        [StringLength(10, ErrorMessage = "* Max 10 Characters")]
        [DisplayFormat(NullDisplayText = "N/A")]
        public string Phone { get; set; }

        [Required(ErrorMessage = "* Required")]
        public int CourseID { get; set; }
    }
    [MetadataType(typeof(CourseSignUpMetadata))]
    public partial class CourseSignUp {
        [Display(Name ="Name")]
        public string FullName { get { return FirstName + " " + LastName; } }
    }
}
