with Ada.Text_IO; use Ada.Text_IO;
with GNAT.Sockets; use GNAT.Sockets;
with Ada.Streams; use Ada.Streams;
with GNAT.Sockaddr_In; use GNAT.Sockaddr_In;  -- For Sock_Addr_Type and related routines

procedure TCP_Socket_Server is
   Server_Address : Sock_Addr_Type;
   Server_Socket, Client_Socket : Socket_Type;
   Buffer : Stream_Element_Array (1 .. 1024);
   Last   : Stream_Element_Offset;

   -- A helper procedure to handle client requests
   procedure Handle_Client (Socket : Socket_Type) is
      Response : constant String := "Hello from Ada Server!" & ASCII.LF;
      Response_Array : Stream_Element_Array (1 .. Response'Length);

      -- Procedure to convert string to stream element array
      procedure Convert is
      begin
         for I in Response'Range loop
            Response_Array(I) := Stream_Element(Response(I));
         end loop;
      end Convert;
   begin
      Convert;

      -- Receive data from client
      Receive_Socket(Socket, Buffer, Last, Last);
      Put_Line("Received: " & String(Buffer(1 .. Integer(Last))));

      -- Send response to client
      Send_Socket(Socket, Response_Array'Access, Last, Last);
      Shutdown_Socket(Socket, Socket_Shutdown_Both);

      -- Close client socket
      Close_Socket(Socket);
   end Handle_Client;

begin
   -- Initialize server address structure
   Set_Sock_Addr(Server_Address, Inet_Addr("127.0.0.1"), Port_Type'Value("8080"));

   -- Create a socket to listen for incoming connections
   Server_Socket := Socket (Family => AF_INET, Mode => SOCK_STREAM, Protocol => IPPROTO_TCP);
   Bind_Socket (Server_Socket, Server_Address);
   Listen_Socket (Server_Socket, 2);  -- Listen on the socket

   -- Accept a connection from a client
   loop
      Put_Line("Waiting for a connection...");
      Accept_Socket (Server_Socket, Client_Socket, Server_Address);
      Handle_Client (Client_Socket);
      Put_Line("Handled one client, waiting for more.");
   end loop;

   -- Close the server socket (never reached in this example)
   Close_Socket (Server_Socket);
end TCP_Socket_Server;
