<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Wizard"></asp:Label>
        <br />
        <br />

         <asp:Wizard ID="Wizard1" runat="server" BackColor="#E6E2D8" BorderColor="#999999" BorderWidth="1px" Font-Bold="True" Font-Names="Verdana" Font-Size="0.8em" HeaderText="Student Information" Height="188px" Width="530px" ActiveStepIndex="0" OnNextButtonClick="Wizard1_NextButtonClick" BorderStyle="Solid">
            <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
             <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" title="Student Details">
                   <table align="center" cellpadding="5" cellspacing="5">
                       <tr>
                           <td><asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label></td>
                           <td><asp:TextBox ID="txt_fname" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td><asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label></td>
                           <td><asp:TextBox ID="txt_lname" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td><asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label></td>
                           <td>
                               <asp:RadioButton ID="rbt_male" runat="server" Checked="True" GroupName="gender" Text="Male" />
                               <asp:RadioButton ID="rbt_female" runat="server" GroupName="gender" Text="Female" />
                           </td>
                       </tr>
                   </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" title="Course Details">
                    <table align="center" cellpadding="5" cellspacing="5">
                       <tr>
                           <td><asp:Label ID="Label5" runat="server" Text="Course Name:"></asp:Label></td>
                           <td><asp:TextBox ID="txt_course" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td><asp:Label ID="Label6" runat="server" Text="Department"></asp:Label></td>
                           <td>
                               <asp:DropDownList ID="ddl_dept" runat="server" Height="25px" Width="150px">
                                   <asp:ListItem>Select Course</asp:ListItem>
                                   <asp:ListItem>BCA</asp:ListItem>
                                   <asp:ListItem>BBA</asp:ListItem>
                                   <asp:ListItem>B.Sc.</asp:ListItem>
                                   <asp:ListItem>B.Com</asp:ListItem>
                                   <asp:ListItem>B.A.</asp:ListItem>
                                   <asp:ListItem>IMCA</asp:ListItem>
                               </asp:DropDownList>
                           </td>
                       </tr>
                   </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Personal Details">
                    <table align="center" cellpadding="5" cellspacing="5">
                       <tr>
                           <td><asp:Label ID="Label7" runat="server" Text="Mobile No:"></asp:Label></td>
                           <td><asp:TextBox ID="txt_mob" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td><asp:Label ID="Label8" runat="server" Text="E-mail:"></asp:Label></td>
                           <td><asp:TextBox ID="txt_email" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                       </tr>
                   </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Address Details">
                    <table align="center" cellpadding="5" cellspacing="5">
                       <tr>
                           <td><asp:Label ID="Label9" runat="server" Text="City:"></asp:Label></td>
                           <td><asp:TextBox ID="txt_city" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td><asp:Label ID="Label10" runat="server" Text="Country:"></asp:Label></td>
                           <td>
                               <asp:DropDownList ID="ddl_country" runat="server" Height="25px" Width="150px">
                                   <asp:ListItem>Select Country</asp:ListItem>
                                   <asp:ListItem>India</asp:ListItem>
                                   <asp:ListItem>America</asp:ListItem>
                                   <asp:ListItem>Canada</asp:ListItem>
                                   <asp:ListItem>Australia</asp:ListItem>
                                   <asp:ListItem>Africa</asp:ListItem>
                                   <asp:ListItem>Srilanka</asp:ListItem>
                               </asp:DropDownList>
                           </td>
                       </tr>
                   </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep5" runat="server" Title="Student Summry">
                    <table align="center" cellpadding="5" cellspacing="5">
                        <tr>
                            <td><asp:Label ID="Label11" runat="server" Text="First Name:"></asp:Label></td>
                            <td><asp:Label ID="lbl_fname" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label12" runat="server" Text="Last Name:"></asp:Label></td>
                            <td><asp:Label ID="lbl_lname" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label13" runat="server" Text="Gender:"></asp:Label></td>
                            <td><asp:Label ID="lbl_gen" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label14" runat="server" Text="Course:"></asp:Label></td>
                            <td><asp:Label ID="lbl_course" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label15" runat="server" Text="Department:"></asp:Label></td>
                            <td><asp:Label ID="lbl_dept" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label16" runat="server" Text="Mobile No:"></asp:Label></td>
                            <td><asp:Label ID="lbl_mob" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label17" runat="server" Text="E-mail:"></asp:Label></td>
                            <td><asp:Label ID="lbl_email" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label18" runat="server" Text="City:"></asp:Label></td>
                            <td><asp:Label ID="lbl_city" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label19" runat="server" Text="Country:"></asp:Label></td>
                            <td><asp:Label ID="lbl_country" runat="server" Text=""></asp:Label></td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep6" runat="server" StepType="Complete" Title="Bye Bye">
                    <table align="center">
                        <tr>
                            <td>
                                 <asp:Label ID="Label20" runat="server" Text="Thank You."></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>

        <br />

    </div>
    </form>
</body>
</html>
