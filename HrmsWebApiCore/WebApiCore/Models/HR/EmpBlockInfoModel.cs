﻿using System;

namespace WebApiCore.Models.HR
{
    public class EmpBlockInfoModel
    {
        public int? ID { get; set; }
        public string EmpCode { get; set; }
        public string IsBlock { get; set; }
        public DateTime BlockDate { get; set; }
        public string Remark { get; set; }
        public int? CompanyID { get; set; }
        public string Status { get; set; }
    }
}