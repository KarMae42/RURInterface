using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Microsoft.AspNet.FriendlyUrls;

namespace RURInterface
{
    public partial class RefereeProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlrefSelect.DataBind();

                string id = "";
                if (RouteData.Values.ContainsKey("Referee"))
                {
                    //id = RouteData.Values["Referee"].ToString();
                    //id = Convert.ToString(Request.QueryString("Referee"));
                    id = Request.QueryString["Referee"];
                }
                else
                {
                    var segments = Request.GetFriendlyUrlSegments();
                    if (segments.Count > 0) id = segments[0];
                }
                //var segments = Request.GetFriendlyUrlSegments();
                //if (segments.Count > 0) id = segments[0];

                if (id == "") Reload();
                else ShowSelectedReferee(id);
            }
        }

        protected void ddlrefSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            Reload();
        }

        private void Reload()
        {
            var id = ddlrefSelect.SelectedValue; //this where try passing session state to here???
            var url = FriendlyUrl.Href("~/RefereeProfile", id);
            Response.Redirect(url);

            //var id = ddlrefSelect.SelectedValue;
            //Response.Redirect("~/RefereeProfile/" + id);
        }

        private void ShowSelectedReferee(string id)
        {
            var referee = GetSelectedReferee(id);
            lblRefName.Text = referee.RefereeName;
            lblAverageRate.Text = referee.AverageTotal;

            ddlrefSelect.SelectedValue = referee.RefereeName;
            
        }

        private RefereeInfo GetSelectedReferee(string id)
        {
            DataView refereeSelected = (DataView)
               SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            //refereeSelected.RowFilter = $"Referee = '{id}'";
            refereeSelected.RowFilter = $"Referee = '{id}'";
            //refereeSelected.RowFilter = string.Format("Referee = '{0}'", ddlrefSelect.SelectedValue);
            DataRowView row = refereeSelected[0];

            RefereeInfo r = new RefereeInfo();
            r.RefereeName = row["Referee"].ToString();
            r.AverageTotal = row["Average_star_rating"].ToString();

            return r;
        }

        protected void refereeDisplayRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}