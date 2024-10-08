<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>City Search</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        #suggestions {
            border: 1px solid #ccc;
            max-height: 200px;
            overflow-y: auto;
            display: none;
            position: absolute;
            background-color: white;
            z-index: 1000;
            width: 100%;
        }

        .suggestion-item {
            padding: 10px;
            cursor: pointer;
        }

        .suggestion-item:hover {
            background-color: #f8f9fa;
        }
    </style>
    
    <script>
        const cities = [
            "New York", "Los Angeles", "Chicago", "Houston", "Phoenix", 
            "Philadelphia", "San Antonio", "San Diego", "Dallas", "San Jose"
        ];

        function showSuggestions() {
            const input = document.getElementById("txtCity").value.toLowerCase();
            const suggestions = document.getElementById("suggestions");
            suggestions.innerHTML = "";

            if (input) {
                for (const city of cities) {
                    if (city.toLowerCase().includes(input)) {
                        const item = document.createElement("div");
                        item.className = "suggestion-item";
                        item.textContent = city;
                        item.onclick = function() {
                            selectCity(city);
                };
                        suggestions.appendChild(item);
            }
        }
        suggestions.style.display = suggestions.childElementCount ? "block" : "none";
        } else {
            suggestions.style.display = "none";
        }
        }

        function selectCity(city) {
            document.getElementById("txtCity").value = city;
            document.getElementById("suggestions").style.display = "none";
        }
    </script>
</head>
<body>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form id="form1" runat="server" class="position-relative">
                    <div class="mb-3">
                        <asp:TextBox ID="txtCity" runat="server" class="form-control" placeholder="Enter city name" onkeyup="showSuggestions()" />
                    </div>
                    <div id="suggestions" class="list-group"></div>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" CssClass="btn btn-primary w-100" />
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
