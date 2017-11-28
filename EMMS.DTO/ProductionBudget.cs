using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
    public class ProductionBudget
    {
        [Required]
        public int BudgetedYear { get; set; }
        [Required]
        public List<string> Month { get; set; }
        [Required]
        public List<string> UOM { get; set; }
        [DataType(DataType.Currency)]
        public double Value { get; set; }

    }
}
