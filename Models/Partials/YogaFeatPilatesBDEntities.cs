using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAssortmentCheck.Models
{
    public partial class YogaFeatPilatesBDEntities : DbContext
    {
        private static YogaFeatPilatesBDEntities _context;


        public static YogaFeatPilatesBDEntities GetContext()
        {
            if (_context == null)
            {
                _context = new YogaFeatPilatesBDEntities();
            }
            return _context;
        }
    }
}
