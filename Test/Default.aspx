<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DMS.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>View Deal</title>
    <link rel="stylesheet" href="StyleSheet.css"/>
    <style type="text/css">
        #Mainarticle {
            height: 212px;
        }
    </style>
</head>
<body id="BodyDeals">
    <form id="form1" runat="server" style = "text-align: center; height: 195px; width: 99%;">
        <div  id ="Body1">
             <div class="aspNetHidden" style ="display:none">
</div>
    <header>
        <h2>View Deals</h2> 
           
	</header>
	
	<section id="MainSection1">
	
		<article id="Mainarticle">
    <div id ="Deals" style =" Height:204px;"  >
        <asp:GridView ID="dgDeal" runat="server" AutoGenerateColumns="false"   Width ="100%" Height ="16px" OnRowDeleting="dgDeal_RowDeleting" AllowPaging="True" PageSize="5" OnSelectedIndexChanged="dgDeal_SelectedIndexChanged" OnRowDataBound="dgDeal_RowDataBound" OnRowEditing="dgDeal_RowEditing">
           <Columns >
              <asp:BoundField HeaderText="DealID" DataField ="DealID" ItemStyle-BackColor="#FFFFC6">
                  </asp:BoundField> 
                <asp:TemplateField HeaderText ="Name" ControlStyle-Width="100px"> 
                  <ItemTemplate >
                      <asp:TextBox runat ="server" id ="lblCP" Visible="true"  ReadOnly ="true"  Text ='<% # Bind("Name") %>' Enabled ="false" CssClass="TextBoxBg"></asp:TextBox>
                      <asp:DropDownList runat ="server" id ="ddlCP"  Visible="false" CssClass="TextBoxBg"></asp:DropDownList>
                  </ItemTemplate>
                   </asp:TemplateField> 
                <asp:TemplateField HeaderText ="Buy" ControlStyle-Width="100px"> 
                   <ItemTemplate >
                        <asp:TextBox runat ="server" id ="lblBCCY" Visible="true"  CssClass="TextBoxBg" ReadOnly ="true" Text ='<% # Bind("Buy") %>' Enabled ="false"  ></asp:TextBox>
                      <asp:DropDownList runat ="server" id ="ddlBuyCCY" CssClass="TextBoxBg"  Visible="false"></asp:DropDownList>
                  </ItemTemplate>
                     </asp:TemplateField> 
                <asp:TemplateField HeaderText ="Balance" ControlStyle-Width="100px"> 
                  <ItemTemplate >
                      <asp:TextBox runat ="server" id ="txtBBal" CssClass="TextBoxBg" Text ='<% # Bind("BBalance") %>'  Enabled ="false"  ></asp:TextBox>
                  </ItemTemplate>
                     </asp:TemplateField> 
                <asp:TemplateField HeaderText ="Sell" ControlStyle-Width="100px">                   
                 <ItemTemplate >
                      <asp:TextBox runat ="server" id ="lblSCCY" Visible="true" CssClass="TextBoxBg" ReadOnly ="true" Text ='<% # Bind("Sell") %>'  Enabled ="false" ></asp:TextBox>
                      <asp:DropDownList runat ="server" id ="ddlSellCCY" CssClass="TextBoxBg"  Visible="false"  ></asp:DropDownList>
                  </ItemTemplate>
                     </asp:TemplateField> 
                <asp:TemplateField HeaderText ="Balance" ControlStyle-Width="100px"> 
                   <ItemTemplate >
                      <asp:TextBox runat ="server" id ="txtSBal" CssClass="TextBoxBg"  Text ='<% # Bind("SBalance") %>' ReadOnly ="true" Enabled ="false" ></asp:TextBox>
                  </ItemTemplate>
                     </asp:TemplateField> 
                <asp:TemplateField HeaderText ="TradeDate" ControlStyle-Width="100px"> 
                   <ItemTemplate >
                      <asp:TextBox runat ="server" id ="txtDate"  CssClass="TextBoxBg" Text ='<% # Bind("TradeDate") %>' ReadOnly ="true" Enabled ="false" ></asp:TextBox>
                  </ItemTemplate>
                     </asp:TemplateField> 
                <asp:TemplateField HeaderText ="Update" ControlStyle-Width="100px"> 
                  <ItemTemplate>
                      <asp:LinkButton runat ="server" CssClass="TextBoxBg" Text="Update" ID ="Update" CommandName="Update" Width ="60px" />
                      </ItemTemplate>
                     </asp:TemplateField> 
               <asp:TemplateField>
                
                     </asp:TemplateField> 
                <asp:TemplateField> 
              </asp:TemplateField> 
           </Columns>
            <HeaderStyle  BackColor="#66FF33"  ForeColor="White" />
        </asp:GridView>
    </div>
        <div id="Update">
            <asp:Label ID="lblName" runat="server" Text="Name" ></asp:Label>         
                <asp:TextBox ID="txtName" runat="server" Width="128px" CssClass="TextBoxBg"></asp:TextBox>
            <asp:Button ID="btnGo" runat="server" Text="Go"  CssClass="Nav" OnClick="btnGo_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblDealID" runat="server" Text="DealID"></asp:Label>         
            <asp:TextBox ID="txtDealId" runat="server" CssClass="TextBoxBg"></asp:TextBox>
            <asp:Button ID="btnEdit" runat="server" Text="Edit"  CssClass="Nav" OnClick="btnEdit_Click"/><br />
             <asp:Button ID="btnAdd" runat="server" Text="New Deal"  CssClass="Nav" OnClick="btnAdd_Click"/>
            <asp:Button ID="btnExit" runat="server" Text="Exit"  CssClass="Nav" />
            
        </div>
            </article>
        </section>
            </div>     
    </form>
</body>
</html>
