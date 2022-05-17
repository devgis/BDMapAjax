<%@ WebHandler Language="C#" Class="data" %>

using System;
using System.Web;
using Newtonsoft.Json;

public class data : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        System.Data.DataTable dt = BDMapWeb.SQLHelper.GetDataTable("select * from jwd_table");
        context.Response.Write(JsonConvert.SerializeObject(dt));
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}