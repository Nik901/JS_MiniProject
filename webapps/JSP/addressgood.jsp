<html>
<body>

<%
// Allocate a holder for the data.
    NameAndAddress data = new NameAndAddress();

// Copy the information passed into the JSP.
    data.firstName = request.getParameter("firstName");
    data.middleName = request.getParameter("middleName");
    data.lastName = request.getParameter("lastName");
    data.address1 = request.getParameter("address1");
    data.address2 = request.getParameter("address2");
    data.city = request.getParameter("city");
    data.state = request.getParameter("state");
    data.zip = request.getParameter("zip");

// Call the formatting routine.
    formatNameAndAddress(data, out);
%>
</body>
</html>

<%!
// The holder for the formatting data
    class NameAndAddress
    {
        public String firstName;
        public String middleName;
        public String lastName;
        public String address1;
        public String address2;
        public String city;
        public String state;
        public String zip;
    }

// Print out the name address.
    void formatNameAndAddress(NameAndAddress data, JspWriter out)
        throws java.io.IOException
    {
        out.println("<PRE>");
        out.print(data.firstName);
// Print the middle name only if it contains data.
        if ((data.middleName != null) &&
            (data.middleName.length() > 0))
        {
            out.print(" "+data.middleName);
        }
        out.println(" "+data.lastName);
        out.println(data.address1);

// Print the second address line only if it contains data.
        if ((data.address2 != null) &&
            (data.address1.length() > 0))
        {
            out.println(data.address2);
        }
        out.println(data.city+", "+data.state+" "+data.zip);
        out.println("</PRE>");
    }
%>