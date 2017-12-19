print "localtime: ";
my $num = <STDIN>;
my $time = $num;
my ($sec,$min,$hour,$mday,$mon,$year,$wday) = (localtime($time))[0..6];
my @wk = ('Sun','Mon','Tue','Wed','Thu','Fri','Sat');
# 曜日を表示するバージョン
# my $date = sprintf("%04d/%02d/%02d (%s) %02d:%02d:%02d",$year+1900,$mon+1,$mday,$wk[$wday],$hour,$min,$sec);
my $date = sprintf("%04d-%02d-%02d %02d:%02d:%02d",$year+1900,$mon+1,$mday,$hour,$min,$sec);
print "timestamp: " . $date . "\n"
