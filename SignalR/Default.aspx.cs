using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalR
{
    public partial class Default : System.Web.UI.Page
    {
        /// <summary>
        /// Handles the Load event of the Page control.
        /// </summary>
        /// Author: Mohammad Reza Safari
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            var myLog = new List<string>();
            myLog.Add(string.Format("{0} - Logging Started", DateTime.UtcNow));

            logListView.DataSource = myLog;
            logListView.DataBind();
        }
    }
}