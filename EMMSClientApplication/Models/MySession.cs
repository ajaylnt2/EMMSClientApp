using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class MySession
    {
        // private constructor
        private MySession()
        {
            Property1 = "default value";
        }

        // Gets the current session.
        public static MySession Current
        {
            get
            {
                MySession session =
                  (MySession)HttpContext.Current.Session["PlantID"];
                if (session == null)
                {
                    session = new MySession();
                    HttpContext.Current.Session["PlantID"] = session;
                }
                return session;
            }
        }

        // **** add your session properties here, e.g like this:
        public string Property1 { get; set; }
        public DateTime MyDate { get; set; }
        public int PlantId { get; set; }

    }
}