using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApprovalRoutingCleanup
{
    public class Approval
    {
        public string LU_Name { get; set; }
        public string Key_Ref { get; set; }
        public string Step_No { get; set; }
        public string Description { get; set; }
        public string App_Date { get; set; }
        public string Approval_Status { get; set; }
        public string Prev_Approval_Date { get; set; }
        public string Person_ID { get; set; }
        public string Obj_ID { get; set; }
    }
}