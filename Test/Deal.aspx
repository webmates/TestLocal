<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deal.aspx.cs" Inherits="DMS.Deal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id= "head" runat="server">
    <link rel="stylesheet" href="StyleSheet.css"/>
    <title>NewDeal</title>

  

    <style type="text/css">
        #Mainarticle {
            margin-top: 144px;
        }
    </style>

  

</head>
<body id="BodyMain">
    <form id="form1" runat="server" style = "text-align: center; height: 70%; width: 100%;">
    <div id ="Body">
       <div class="aspNetHidden" style ="display:none">
</div>
    <header>
        <h2>New Deal</h2> 
           
	</header>
	
	<section id="Mainsection">
	
		<article id="Mainarticle">
		
	
      <div id ="Main" style="background-color: #E2FAFA; width: 100%;" >
           <div id ="Client"  >
                <h3>Client</h3>
               

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

               

        <asp:Label ID="lblName"  width= "90px"  height ="28px"  runat="server" Text="Name" ></asp:Label>
             <asp:DropDownList ID="ddlName" runat="server" Width="200px" autoPostBack="True" CssClass="TextBoxDeal"></asp:DropDownList>
                                        
               &nbsp;&nbsp;&nbsp; &nbsp;

             <asp:Label ID="lblDate" runat="server" Text="Trade Date" Width="134px" Height="23px"></asp:Label> 
                <asp:TextBox ID="txtDate" runat="server" Width="195px" Enabled="False" ReadOnly="True" CssClass="TextBoxDeal"></asp:TextBox>
               <asp:Label  CssClass="Labels" ID="lblDay" runat="server" Text="Same Day Client" Width="161px" Height="16px"   ></asp:Label>
        </div>
            <div id ="Deal">
                 <span style =" margin-left :50px">
                <asp:Label ID="lblDeal" width="20%"   height ="15px" CssClass="Labels" runat="server" Text="Deal ID" Font-Bold="True" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
                     </span>
              <br />
               
            <div id ="Buy"   style="border: thin groove #C0C0C0; text-align:justify;"  >
                <span style =" margin-left :550px">
                <asp:Label ID="lblBuy" runat="server" Text="Buy"  ForeColor="Brown"></asp:Label>
                     </span>
                <br />
                
           <span style ="width:20px; margin-left :250px">
                <asp:Label ID="lblCCY" runat="server" Text="Buy CCY" Width="100px" Height="18px"></asp:Label>
            <asp:DropDownList ID="ddlCCY" runat="server" Width="200px" autoPostBack="True" EnableViewState="true" CssClass="TextBoxDeal" ></asp:DropDownList><br />
                 </span>
                                <span style ="width:20px; margin-left :250px">
                 <asp:Label ID="lblAmt" runat="server" Text="Buy Amount" Width="100px"></asp:Label>            
                <asp:TextBox ID="txtAmt" runat="server" Width="200px" CssClass="TextBoxDeal"></asp:TextBox>  
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="txtAmt" ForeColor="Red" 
                Text="*" Display="Dynamic"></asp:RequiredFieldValidator>                
                                   
 </span>

                         
                    </div>
                
                                                           
                <div id ="Sell"  style="border: thin groove #C0C0C0; text-align:left " >
                    <span style =" margin-left: 0px">
                     <asp:Label ID="lblSell" runat="server" Text="Sell"  ForeColor="Brown" Width="105px"></asp:Label>
                        </span>
                    <br />
                      <span style =" margin-left: 40px;">
                     
                <asp:Label ID="lblSCCY" runat="server" Text="Sell CCY" Width="115px"></asp:Label>
            <asp:DropDownList ID="ddlSCCY" runat="server" Width="200px" autoPostBack="True" EnableViewState="true" CssClass="TextBoxDeal"></asp:DropDownList><br />
                
                     <span style =" margin-left: 40px;">
                            <asp:Label ID="lblSAmt" runat="server" Text="Sell Amount" Width="115px"></asp:Label>            
                <asp:TextBox ID="txtSAmt" runat="server" Width="200px" CssClass="TextBoxDeal"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="txtSAmt" ForeColor="Red" 
                Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="revNumber" runat="server" ControlToValidate="txtSAmt" ForeColor ="Red"
           ErrorMessage="Please enter Valid Amount" ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>

           </span></span>
               
                 </div>
                   
                   
                    
                </div>
               
            <div id ="Delivery" style="border: thin groove #C0C0C0; " >
                <h3 style="height: 15px">                Delivery instructions
                    </h3>
                &nbsp;<asp:Label ID="lblPayee" runat="server" Text="Payee" Height="22px" Width="100px" style="margin-left: 19px"></asp:Label>
            <asp:DropDownList ID="ddlPayee" runat="server" AutoPostBack="True" EnableViewState="true" OnSelectedIndexChanged ="ddlPayee_SelectedIndexChanged"   Height  ="21px" Width="200px" CssClass="TextBoxDeal"></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMethod" runat="server" Text="Method" Height="26px" style="margin-left: 0px" Width="98px" ></asp:Label>
            <asp:DropDownList ID="ddlMethod" EnableViewState="true" runat="server" Height="22px" style="margin-left: 0px" Width="200px" CssClass="TextBoxDeal" ></asp:DropDownList><br />
                  
                 <asp:Label ID="lblAC" CssClass="Labels2" Width="577px" runat="server" Text="AC DETAILS" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Height="54px" ></asp:Label>   
                <br />
                                <br />
                &nbsp;
                  <asp:Label ID="lblRef" Width="94px" runat="server" Text="Ref"  Height="26px"></asp:Label>         
                <asp:TextBox ID="txtRef" runat="server" Width="195px"  ReadOnly ="true" Enabled ="false" CssClass="TextBoxDeal" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblDAmt" runat="server" Text="Amount" Height="26px" style="margin-left: 0px" Width="111px"></asp:Label>         
                <asp:TextBox ID="txtDAmt" runat="server" style="margin-left: 0px" Width="195px" CssClass="TextBoxDeal"></asp:TextBox>
               <asp:RequiredFieldValidator ID="rfvPjone" runat="server"  ControlToValidate="txtDAmt" ForeColor="Red" Font-Size="X-Small" 
                Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                                <br />
   <asp:RegularExpressionValidator ID="rgv1" runat="server" ControlToValidate="txtAmt" ForeColor ="Red"
           ErrorMessage="Please enter Valid Amount" ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="rgv2" runat="server" ControlToValidate="txtDAmt" ForeColor ="Red"  Font-Size="X-Small" 
           ErrorMessage="Please enter Valid Amount" ValidationExpression="^\d+(\.\d\d)?$"></asp:RegularExpressionValidator>


          <div id ="Nav">
                   
                 <asp:Button ID="btnFirst" runat="server" Text="|<" OnClick="btnFirst_Click"  CssClass="Accept"/>   
                <asp:Button ID="btnPrev" runat="server" Text="<" OnClick="btnPrev_Click"  CssClass="Accept" />                
                 <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btnAdd_Click"  CssClass="Accept" />
                              <asp:TextBox ID="txtNo" runat="server" Height="24px" style="margin-left: 0px" Width="135px" Font-Bold="True" CssClass="TextBoxBg" Enabled="False" ReadOnly="True"></asp:TextBox>

            <asp:Button ID="btnRemove" runat="server" Text="-" OnClick="btnRemove_Click"   CssClass="Accept" />
            <asp:Button ID="btnNext" runat="server" Text=">" OnClick="btnNext_Click" CssClass="Accept"/>
                <asp:Button ID="btnLast" runat="server" Text=">|" OnClick="btnLast_Click"  CssClass="Accept"  />
                </div>
            </div>
                    <div id ="Accept" style="border: thin groove #C0C0C0;" >
                <asp:Button ID="btnAccept"  CssClass="Nav" runat="server" Text="Accept" OnClick="btnAccept_Click" />
            <asp:Button ID="btnUndo" runat="server" Text="Undo" CssClass="Nav"   />
            <asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="Nav" />
                </div>
            
      
            
      </div>
        </article>
            </section>
    </div>
    </form>
    </body>
</html>
