<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DateNTime.aspx.cs" Inherits="Date_n_Time_DateNTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Date & Time</title>

    <!--Bootstrap CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <!--jQuery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+J2Wk5vqXn3Fm/z2N1r8f6VZJ4T3Hdvh4kXG1j4fZ6IsU2f5" crossorigin="anonymous"></script>
    <!--AJAX JS-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <script type="text/javascript">
        setInterval(function () {
            updateDateTime();
        }, 1000);

        function updateDateTime() {

            var now = new Date();

            var day = now.toLocaleDateString('en-US', {
                weekday: 'long'
            });

            var month = now.toLocaleDateString('en-US', {
                month: 'long'
            });

            var date = now.getDate();
            var year = now.getFullYear();

            var time = now.toLocaleTimeString('en-US', {
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit',
                hour12: true
            });

            var formattedDateTime = day + ', ' + month + ' ' + date + ', ' + year + ' | ' + time;

            document.getElementById('<%= lblDateTime.ClientID %>').innerHTML = formattedDateTime;
        }
    </script>

</head>
<body class="bg-light">
    <form id="form1" runat="server">
       <div class="card-body">
           <div class="col-md-4 mx-auto mt-5 py-5 shadow border border-dark-subtle text-center rounded-4">
               <asp:Label ID="lblDateTime" runat="server" CssClass=""></asp:Label>
           </div>
       </div>
    </form>
</body>
</html>
