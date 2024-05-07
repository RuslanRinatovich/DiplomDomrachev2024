using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace WpfAssortmentCheck.Models
{
    public partial class CategoryTrainer
    {
        public Visibility GetVisibility
        {
            get
            {
                if (Manager.CurrentUser == null)
                    return Visibility.Collapsed;
                if (Convert.ToInt32(Manager.CurrentUser.Role) != 0)
                    return Visibility.Collapsed;
                return Visibility.Visible;
            }
        }
    }
}
