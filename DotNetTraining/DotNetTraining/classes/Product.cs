using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DotNetTraining.classes
{
    public class Product
    {
        private int _ProductID;
        public int ProductID
        {
            get
            {
                return _ProductID;
            }
            set
            {
                _ProductID = value;
            }
        }
    }
}