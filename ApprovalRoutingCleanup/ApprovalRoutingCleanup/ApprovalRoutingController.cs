using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ApprovalRoutingCleanup
{
    public class ApprovalRoutingController : ApiController
    {


        // GET api/<controller>
        public IEnumerable<Approval> Get()
        {
            //Setup sql connection
            var con = "Server=localhost;Database=ApprovalCleanup;Trusted_Connection=True;";

            List<Approval> apps = new List<Approval>();
            using (SqlConnection myConnection = new SqlConnection(con))
            {
                string query = "Select * From dbo.approval_routing";
                SqlCommand cmd = new SqlCommand(query, myConnection);
                myConnection.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Approval approval = new Approval
                        {
                            LU_Name = reader["LU_NAME"].ToString(),
                            Key_Ref = reader["KEY_REF"].ToString(),
                            Step_No = reader["STEP_NO"].ToString(),
                            Description = reader["DESCRIPTION"].ToString(),
                            App_Date= reader["APP_DATE"].ToString(),
                            Prev_Approval_Date = reader["PREV_APPROVAL_DATE"].ToString(),
                            Person_ID = reader["PERSON_ID"].ToString(),
                            Approval_Status = reader["APPROVAL_STATUS"].ToString(),
                        };

                        apps.Add(approval);

                    }

                    myConnection.Close();
                }

            }
            return apps.ToArray();
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}