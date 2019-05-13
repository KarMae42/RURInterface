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
    public partial class GameProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlGameID.DataBind();

                string id = "";
                if (RouteData.Values.ContainsKey("id"))
                {
                    id = RouteData.Values["id"].ToString();
                }
                else
                {
                    var segments = Request.GetFriendlyUrlSegments();
                    if (segments.Count > 0) id = segments[0];
                }

                if (id == "") Reload();
                else ShowSelectedGame(id);
            }
        }

        protected void ddlGameID_SelectedIndexChanged(object sender, EventArgs e)
        {
            Reload();
        }

        private void Reload()
        {
            var id = ddlGameID.SelectedValue;
            var url = FriendlyUrl.Href("~/GameProfile", id);
            Response.Redirect(url);
        }

        private void ShowSelectedGame(string id)
        {
            var game = GetSelectedGame(id);
            lblHomeTeam.Text = game.HomeTeam;
            lblAwayTeam.Text = game.AwayTeam;
            lblRef1.Text = game.Ref1;
            lblRef2.Text = game.Ref2;
            lblRef3.Text = game.Ref3;

            ddlGameID.SelectedValue = game.ID;
        }

        private GameID GetSelectedGame(string id)
        {
            DataView gameSelected = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            //DataView gameSelected = (DataView)
            //    SqlDataSourceTrialFromLocal.Select(DataSourceSelectArguments.Empty);
            gameSelected.RowFilter = $"id = '{id}'";
            DataRowView row = gameSelected[0];

            GameID g = new GameID();
            g.HomeTeam = row["home_team"].ToString();
            g.AwayTeam = row["away_team"].ToString();
            g.Ref1 = row["ref1"].ToString();
            g.Ref2 = row["ref2"].ToString();
            g.Ref3 = row["ref3"].ToString();

            return g;
        }
    }
}

