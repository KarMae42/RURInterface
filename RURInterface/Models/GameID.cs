using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class GameID
{
    public string ID { get; set; }
    public string HomeTeam { get; set; }
    public string HomeScore { get; set; }
    public string HomeMascot { get; set; }
    public string HomeAbbr { get; set; }

    public string AwayTeam { get; set; }
    public string AwayScore { get; set; }
    public string AwayMascot { get; set; }
    public string AwayAbbr { get; set; }

    public string DateTime { get; set; }
    public string GameRound { get; set; }
    public string Ref1 { get; set; }
    public string Ref2 { get; set; }
    public string Ref3 { get; set; }

    public string SentimentScore { get; set; }
}
