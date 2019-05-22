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
                //ddlGameID.DataBind();

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
                //var segments = Request.GetFriendlyUrlSegments();
                //if (segments.Count > 0) id = segments[0];

                if (id == "") Reload();
                else ShowSelectedGame(id);
            }
        }

        //protected void ddlGameID_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Reload();
        //}

        private void Reload()
        {
            //var id = ddlGameID.SelectedValue;
            //var url = FriendlyUrl.Href("~/GameProfile", id);
            var url = FriendlyUrl.Href("~/GameProfile");
            Response.Redirect(url);
        }

        private void ShowSelectedGame(string id)
        {
            var game = GetSelectedGame(id);
            lblHomeTeam.Text = game.HomeTeam;
            //hometeam img src set
            //imgHomeTeam.ImageUrl = game.HomeLogo;
            lblAwayTeam.Text = game.AwayTeam;
            //awayteam img src
            //lblRef1.Text = game.Ref1;
            //lblRef2.Text = game.Ref2;
            //lblRef3.Text = game.Ref3;
            btnRef1Info.Text = game.Ref1;
            btnRef2Info.Text = game.Ref2;
            btnRef3Info.Text = game.Ref3;
            lblSentimentScore.Text = game.SentimentScore;

            

            //ddlGameID.SelectedValue = game.ID;
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
            //g.HomeLogo = row["logo"].ToString(); //from datasource1, home logo is still logo
            g.AwayTeam = row["away_team"].ToString();
            //g.AwayLogo = row["Expr1"].ToString(); //from data source 1, away logo saved as expr1
            g.Ref1 = row["ref1"].ToString();
            g.Ref2 = row["ref2"].ToString();
            g.Ref3 = row["ref3"].ToString();
            g.SentimentScore = row["star_rating"].ToString();


            return g;
        }

        public void MakeStringQuery(string ref1, string ref2, string ref3)
        {

        }

        protected void ref1Info_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RefereeProfile/" + btnRef1Info.Text);
        }

        protected void ref2Info_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RefereeProfile/" + btnRef2Info.Text);
        }

        protected void ref3Info_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RefereeProfile/" + btnRef3Info.Text);
        }
    }
}

