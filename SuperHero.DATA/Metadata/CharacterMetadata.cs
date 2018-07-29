using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperHero.DATA
{
    class CharacterMetadata
    {
        //public int CharacterID { get; set; }
        [Required(ErrorMessage = "* Required")]
        [StringLength(50, ErrorMessage = "* Max 50 Characters")]
        public string Name { get; set; }

        [Required(ErrorMessage = "* Required")]
        [StringLength(50, ErrorMessage = "* Max 50 Characters")]
        public string Alias { get; set; }

        public string Description { get; set; }
        
        [StringLength(50, ErrorMessage = "* Max 50 Characters")]
        public string Occupation { get; set; }

        [Display(Name="Is Hero?")]
        public bool IsHero { get; set; }

        [Display(Name="Is Active?")]
        public bool IsActive { get; set; }

        [Display(Name="Image")]
        [StringLength(100, ErrorMessage ="* Max 100 characters")]
        public string CharacterImage { get; set; }
    }
    [MetadataType(typeof(CharacterMetadata))]
    public partial class Character { }
}
