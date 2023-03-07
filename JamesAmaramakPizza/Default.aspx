<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JamesAmaramakPizza.Default" %>

<!DOCTYPE html>

<html>
<head>
    <title>Pizza Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        #header {
            background-color: #f2f2f2;
            padding: 20px;
        }

        #header h1 {
            margin: 0;
            text-align: center;
        }

        #main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 140px);
        }

        form {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        fieldset {
            border: none;
            margin: 0;
            padding: 0;
        }

        legend {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"], input[type="email"], input[type="tel"], textarea {
            width: 90%;
            padding: 10px;
            border: 0.5px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .button-container a {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 0 10px;
            text-decoration: none;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.2s ease;
        }

        .button-container a:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <div id="header">
        <h1>Pizza Ohhhhh Yeahhhh Man</h1>
        <p style="text-align: center">Oh yeah pizza baby</p>
    </div>

    <div class="button-container">
        <a href="StaffLogin.aspx">Staff Login</a>
        <a href="ViewOrder.aspx">View Order</a>
    </div>

    <div id="main">
        <form id="form1" runat="server">
            <fieldset>
                <legend>Order Your Pizza:</legend>
                <label for="name">Name:<br />
                <asp:TextBox ID="Nametxt" runat="server"></asp:TextBox>
                </label>
&nbsp;

                <label for="email">Email:<br />
                <asp:TextBox ID="Emailtxt" runat="server"></asp:TextBox>
                </label>
                &nbsp;

                <label for="phone">Phone:<br />
                <asp:TextBox ID="Phonetxt" runat="server"></asp:TextBox>
                </label>
                &nbsp;

                 <label for="pizza">Select Your Pizza:</label>
                <asp:DropDownList ID="PizzaTypeBox" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Margarita Pizza</asp:ListItem>
                    <asp:ListItem>Pepperoni Pizza</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </fieldset>
        </form>
    </div>
</body>
</html>