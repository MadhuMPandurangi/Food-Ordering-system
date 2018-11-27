
<!--    Document   : reg1
    Created on : Oct 29, 2017, 12:16:43 PM
    Author     : Madhu M P-->


<%@page import ="java.sql.*" %>
        <%@page import ="javax.sql.*" %>
        <%
            String itemid=request.getParameter("id");
            String itemnames=request.getParameter("name");
            String price=request.getParameter("price");
            String a="1";String b="2";String c="3";String d="4";String e="5";
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement st=con.createStatement();
            
            if(itemid.equals(a))
            { st.executeUpdate("insert into dbd values('"+itemid+"','"+itemnames+"','"+price+"')");
            String Query="select * from dbd";
           PreparedStatement psm=con.prepareStatement(Query);
           ResultSet rs=psm.executeQuery();
    if(rs.next())
           {
            response.sendRedirect("dbd_delete.jsp") ;
           }
           else
           {
               out.println("error in registration");
           }
            }
            
 if(itemid.equals(b))
            { st.executeUpdate("insert into mcd values('"+itemid+"','"+itemnames+"','"+price+"')");
            String Query="select * from mcd";
           PreparedStatement psm=con.prepareStatement(Query);
           ResultSet rs=psm.executeQuery();
    if(rs.next())
           {
              response.sendRedirect("mcd_delete.jsp") ;;
           }
           else
           {
               out.println("error in registration");
           }
            }
 
 if(itemid.equals(c))
            { st.executeUpdate("insert into polar values('"+itemid+"','"+itemnames+"','"+price+"')");
            String Query="select * from polar";
           PreparedStatement psm=con.prepareStatement(Query);
           ResultSet rs=psm.executeQuery();
    if(rs.next())
           {
              response.sendRedirect("polar_delete.jsp") ;;
           }
           else
           {
               out.println("error in registration");
           }
            }
 
 if(itemid.equals(d))
            { st.executeUpdate("insert into hari values('"+itemid+"','"+itemnames+"','"+price+"')");
            String Query="select * from hari";
           PreparedStatement psm=con.prepareStatement(Query);
           ResultSet rs=psm.executeQuery();
    if(rs.next())
           {
              response.sendRedirect("hari_delete.jsp") ;;
           }
           else
           {
               out.println("error in registration");
           }
            }
 
 if(itemid.equals(e))
            { st.executeUpdate("insert into hallithindi values('"+itemid+"','"+itemnames+"','"+price+"')");
            String Query="select * from hallithindi";
           PreparedStatement psm=con.prepareStatement(Query);
           ResultSet rs=psm.executeQuery();
    if(rs.next())
           {
              response.sendRedirect("halli_delete.jsp") ;;
           }
           else
           {
               out.println("error in registration");
           }
            }
        %>
       
