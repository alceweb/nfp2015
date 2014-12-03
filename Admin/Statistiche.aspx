<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Statistiche.aspx.cs" Inherits="Admin_Statistiche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="UsersDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceUsers" DataTextField="UserName" DataValueField="UserId"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Users] ORDER BY [UserName]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label Width="70px" ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label  Width="70px"  ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Eval("IsApproved") %>' Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="PasswordQuestionLabel" runat="server" Text='<%# Eval("PasswordQuestion") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordAnswerLabel" runat="server" Text='<%# Eval("PasswordAnswer") %>' />
                </td>
                <td>
                    <asp:Label  Width="70px"  ID="LastPasswordChangedDateLabel" runat="server" Text='<%# Eval("LastPasswordChangedDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label  Width="70px"  ID="LastLockoutDateLabel" runat="server" Text='<%# Eval("LastLockoutDate", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptCount") %>' />
                </td>
                <td>
                    <asp:Label  Width="70px" ID="FailedPasswordAttemptWindowStartLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptWindowStart", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAnswerAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptCount") %>' />
                </td>
                <td>
                    <asp:Label  Width="70px" ID="FailedPasswordAnswerAttemptWindowsStartLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptWindowsStart", "{0:dd-MMM-yy}") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table class="TblNegozio" id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="vertical-align:bottom; background-color: #DCDBDC;">
                                <th runat="server" style="color: #6D4233; text-align:center">Email</th>
                                <th runat="server" style="text-align:center">Create</th>
                                <th runat="server" style="color: #6D4233; text-align:center">Last login</th>
                                <th runat="server" style="text-align:center">Approved</th>
                                <th runat="server" style="color: #6D4233; text-align:center">LockedOut</th>
                                <th runat="server" style="text-align:center">Password question</th>
                                <th runat="server" style="color: #6D4233; text-align:center">Password answer</th>
                                <th runat="server" style="text-align:center">Password changed</th>
                                <th runat="server" style="color: #6D4233; text-align:center">Lockout</th>
                                <th runat="server" style="color: #6D4233">Count</th>
                                <th runat="server" style="color: #6D4233">Failed Psw winStart</th>
                                <th runat="server" >Count</th>
                                <th runat="server">Failed Answ WinStart</th>
                                <th runat="server" style="color: #6D4233; text-align:center">Comment</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="ApplicationIdLabel" runat="server" Text='<%# Eval("ApplicationId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordFormatLabel" runat="server" Text='<%# Eval("PasswordFormat") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordSaltLabel" runat="server" Text='<%# Eval("PasswordSalt") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordQuestionLabel" runat="server" Text='<%# Eval("PasswordQuestion") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordAnswerLabel" runat="server" Text='<%# Eval("PasswordAnswer") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Eval("IsApproved") %>' Enabled="false" />
                </td>
                <td>
                    <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate") %>' />
                </td>
                <td>
                    <asp:Label ID="LastPasswordChangedDateLabel" runat="server" Text='<%# Eval("LastPasswordChangedDate") %>' />
                </td>
                <td>
                    <asp:Label ID="LastLockoutDateLabel" runat="server" Text='<%# Eval("LastLockoutDate") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptCount") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAttemptWindowStartLabel" runat="server" Text='<%# Eval("FailedPasswordAttemptWindowStart") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAnswerAttemptCountLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptCount") %>' />
                </td>
                <td>
                    <asp:Label ID="FailedPasswordAnswerAttemptWindowsStartLabel" runat="server" Text='<%# Eval("FailedPasswordAnswerAttemptWindowsStart") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Memberships] WHERE ([UserId] = @UserId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="UsersDropDownList" Name="UserId" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

