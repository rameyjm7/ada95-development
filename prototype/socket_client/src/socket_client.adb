with Ada.Text_IO; use Ada.Text_IO;
with GNAT.Sockets; use GNAT.Sockets;

procedure TCP_Socket_Server is
   Server_Address : Sock_Addr_Type;
   Server_Socket, Client_Socket : Socket_Type;
   Buffer : String (1 .. 1024);
   Last   : Natural;
   
   -- A helper procedure to handle client requests
   procedure Handle_Client (Socket : Socket_Type) is
      Response : String := "Hello from Ada Server!";
      begin
         -- Receive data from client
         Receive_Socket(Socket, Buffer, Last);
         Put_Line("Received: " & Buffer(1 .. Last));
         
         -- Send response to client
         Send_Socket(Socket, Response'Access, Response'Length);
         Shutdown_Socket(Socket, Send_SHUT);
         
         -- Close client socket
         Close_Socket(Socket);
   end Handle_Client;

begin
   -- Initialize server address structure
   Set_Sock_Addr(Server_Address, Inet_Addr("127.0.0.1"), Port_Type'Value("8080"));
   
   -- Create a socket to listen for incoming connections
   Server_Socket := Socket(AF_INET, SOCK_STREAM, Protocol_Default);
   Bind_Socket(Server_Socket, Server_Address);
   Listen_Socket(Server_Socket, 2);  -- Listen on the socket
   
   -- Accept a connection from a client
   loop
      Put_Line("Waiting for a connection...");
      Accept_Socket(Server_Socket, Client_Socket, Server_Address);
      Handle_Client(Client_Socket);
      Put_Line("Handled one client, waiting for more.");
   end loop;
   
   -- Close the server socket (never reached in this example)
   Close_Socket(Server_Socket);
end TCP_Socket_Server;
