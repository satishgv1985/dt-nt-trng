using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
namespace NorthWindDB
{
    public class Product
    {
        private int _ProductID;
        private string _ProductName;
        private int _SupplierID;
        public string ProductName
        {
            get
            {
                return _ProductName;
            }
            set
            {
                _ProductName = value;
            }
        }
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
        public int SupplierID
        {
            get
            {
                return _SupplierID;
            }
            set
            {
                _SupplierID = value;
            }
        }

    }
}