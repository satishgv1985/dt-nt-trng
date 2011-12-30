using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for ProductDAL
/// </summary>
namespace NorthWindDB
{
    public class ProductDAL
    {
        public ProductDAL()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static int InsertProduct(Product p)
        {
            string sql2 = @"INSERT INTO Products
           ([ProductName]
           ,[SupplierID]
           ,[CategoryID]
           ,[QuantityPerUnit]
           ,[UnitPrice]
           ,[UnitsInStock]
           ,[UnitsOnOrder]
           ,[ReorderLevel]
           ,[Discontinued]
           ,[Date_Modified])
     VALUES
           (" +p.ProductName + "'Bata',1006,2007,'10 boxes x 20 bags',180,10,5,6,true,) ";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter param = new SqlParameter("productName", p.ProductName);
            cmd.Parameters.Add(param);

            int t=cmd.ExecuteNonQuery();

            return t;
        }

        public static List<Product> GetAllProducts()
        {
            string sql = @"SELECT ProductID, ProductName FROM Products";
            string sql2 = @"INSERT INTO Products
           ([ProductName]
           ,[SupplierID]
           ,[CategoryID]
           ,[QuantityPerUnit]
           ,[UnitPrice]
           ,[UnitsInStock]
           ,[UnitsOnOrder]
           ,[ReorderLevel]
           ,[Discontinued]
           ,[Date_Modified])
     VALUES
           ('Bata',1006,2007,'10 boxes x 20 bags',180,10,5,6,true,) ";

            using (SqlConnection myConnection = new
              SqlConnection(ConfigurationManager.ConnectionStrings[
              "NorthwindConnectionString"].ConnectionString))
            {
                SqlCommand myCommand = new SqlCommand(sql, myConnection);
                myConnection.Open();
                SqlCommand myCommand1 = new SqlCommand(sql2, myConnection);
                myConnection.Open();
                SqlDataReader reader =
                 myCommand.ExecuteReader(CommandBehavior.CloseConnection);
                List<Product> results = new List<Product>();
                while (reader.Read())
                {
                    Product product = new Product();
                    product.ProductID =
                     Convert.ToInt32(reader["ProductID"]);
                    product.ProductName = reader["ProductName"].ToString();
                    //product.QuantityPerUnit = 
                    // reader["QuantityPerUnit"].ToString();
                    //if (reader["UnitPrice"].Equals(DBNull.Value))
                    //    product.UnitPrice = 0;
                    //else
                    //    product.UnitPrice = 
                    //      Convert.ToDecimal(reader["UnitPrice"]);
                    //if (reader["UnitsInStock"].Equals(DBNull.Value))
                    //    product.UnitsInStock = 0;
                    //else
                    //    product.UnitsInStock = 
                    //      Convert.ToInt32(reader["UnitsInStock"]);
                    results.Add(product);
                }
                reader.Close();
                myConnection.Close();
                return results;
            }
        }

        public static Product GetProductById(int pId)
        {
            List<Product> pList = new List<Product>();
            pList = GetAllProducts();
            Product pObj = new Product();
            foreach (Product p in pList)
            {
                if (p.ProductID == pId)
                {
                    pObj.ProductID = p.ProductID;
                    pObj.ProductName = p.ProductName;
                    break;
                }

            }

            return pObj;
        }
    }
}