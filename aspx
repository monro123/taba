<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="AmitmaizusFPV.WebPages.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function showResetForm() {
            document.getElementById('resetFormContainer').style.display = 'block';
        }

        function closeResetForm(event) {
            if (event.target.id === 'resetFormContainer') {
                document.getElementById('resetFormContainer').style.display = 'none';
            }
            function bad() {
                if (<%= msg %>!== "") {
                    alert(<%= msg %>)
                }
        }
    </script>
    <style>
        .form-container {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 9999;
        }

        #resetForm {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        #closeButton {
            margin-top: 10px;
        }

        .id {
            padding: 1.5% 1.2%;
            display: flex;
            justify-content: center;
            align-content: center;
            text-align: center;
            font-family: 'Reem Kufi', sans-serif;
        }

        div > img {
            height: 250px;
            width: 250px;
            border: 5px solid #fff;
            border-radius: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .btn {
            display: inline-block;
            background: #DDDDDD;
            letter-spacing: 1px;
            font-size: 1.1rem;
            text-transform: uppercase;
            font-weight: 600;
            border: 2px solid transparent;
            cursor: pointer;
            transition: ease .20s;
            border-radius: 10px;
            width: 30%;
            text-decoration: none;
        }

        .btn:hover {
            background: #b22929;
            transform: scale(0.9);
            text-decoration: none;
        }

        /* Center the photo at the top of the form */
        #photo {
            display: block;
            margin: 0 auto;
            height: 100px;
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="id">
        <!-- Apply the white border and border-radius to the photo here -->
        <img style="border: 5px solid #fff; border-radius: 50%;" src="../Photos/Default_pfp.svg.png" />
    </div>

    <div class="id">
        <a class="btn" href="Logout.aspx">Log out</a>
    </div>
    <div class="id">
        <a class="btn" style="color: blue" onclick="showResetForm()">Reset Password</a>
    </div>

    <div id="resetFormContainer" class="form-container" onclick="closeResetForm(event)">
        <form id="resetForm" method="post">
            <!-- The photo is now centered at the top of the form -->
            <img id="photo" src="../Photos/unlock%20(1).png" />
            <div>
                <label for="oldPassword">Old Password:</label>
                <input name="oldPassword" type="password" id="oldPassword" required>
            </div>
            <div>
                <label for="newPassword">New Password:</label>
                <input name="newPassword" type="password" id="newPassword" required>
            </div>
            <div class="center">
                <input type="submit" name="submit" value="Submit" class="btn" />
                <button class="btn" type="submit">Reset</button>
                <h3><%= msg %></h3>
            </div>
        </form>
    </div>
</asp:Content>
