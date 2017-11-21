package tivo;

// Test parsing with and without the final comma.  With the comma is a syntax error.

class MapInitializerParsingIssue {

    private static var VAR : haxe.ds.StringMap<String> = [
        "Something" => "Nothing",
        "Other"     => "Else"
    ];

    // RCN: channel call letters to IPTV Linear Url Map
    private static var RCN_IP_LINEAR_URL_MAP : haxe.ds.StringMap<String> = [
        "SYFY"  => "http://207.172.213.194:80/live-spts/syfy/transmux/manifest.m3u8",
        "TBS"   => "http://207.172.213.194:80/live-spts/tbs/transmux/manifest.m3u8",
        "TNT"   => "http://207.172.213.194:80/live-spts/tnt/transmux/manifest.m3u8",
        "USA"   => "http://207.172.213.194:80/live-spts/usa/transmux/manifest.m3u8"
    ];

    // kabletown: channel call letters to IPTV Linear Url Map
    private static var KABLETOWN_IP_LINEAR_URL_MAP : haxe.ds.StringMap<String> = [
        "SYFY" => "http://d1z1cytwyupqxn.cloudfront.net/ch11/latest.m3u8",
        "TBS"  => "http://d1z1cytwyupqxn.cloudfront.net/ch21/latest.m3u8",
        "TNT"  => "http://d1z1cytwyupqxn.cloudfront.net/ch17/latest.m3u8",
        "USA"  => "http://d1z1cytwyupqxn.cloudfront.net/ch13/latest.m3u8",
    ];

    public function new() {
    }


}
