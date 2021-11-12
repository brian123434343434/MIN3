<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowUser.Master" CodeBehind="FormRegister.aspx.vb" Inherits="BPMWebSite.FormRegister" 
    title="" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table width="100%" border="0" cellspacing="0" cellpadding="0" valign="top" >
    <tr>
        <td valign="top">
            <table cellspacing="0" cellpadding="1" width="98%" border="0" align="center">
                <tr>
                    <td class="cssWorkFlowDefaultText" align="left">
                        Formulario: <asp:Label ID="lblFormName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="cssWorkFlowDefaultText" align="left">
                        Consecutivo: <asp:Label ID="lblSequence" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="cssWorkFlowDefaultText" align="left">
                        Estado: <asp:Label ID="lblEstado" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><table width="99%" border="0" cellspacing="1" cellpadding="1" align="center">
                            <tr>
                                <td colspan="2" class="cssTablaTitulos2">
                                    Listado de Capitulos</td>
                            </tr>
                            <%
					        if objChapters.recordcount>1 then 				
						        for i = 1 to objChapters.recordcount				
							        select case objChapters("ChapterType")
								        case "A"
									        Response.Write "<TR><TD class=cssWorkFlowDefaultText><a href=DotNetFormBuilderChapterA.asp?Op=Edit&IDChapter=" & objChapters("ID") & "&FormSequence=" & lFormSequence & ">"
								        case "B"
									        Response.Write "<TR><TD class=cssWorkFlowDefaultText><a href=DotNetFormBuilderChapterB.asp?Op=Edit&IDChapter=" & objChapters("ID") & "&FormSequence=" & lFormSequence & ">"
								        'case "C"
									        'Response.Write "<TR><TD class=cssWorkFlowDefaultText><a href=formchapterC.asp?IDChapter=" & objChapters("ID")& ">"
							        end select
							        Response.Write  objChapters("Name") & "</a></td>"
							        Response.Write  "<td class=cssWorkFlowDefaultText>" & objChapters("Description") & "</td></tr>"
						        objChapters.Movenext
						        next
					        else
							    select case objChapters("ChapterType")
								    case "A"
									    if UCase(Trim(lsFormStatus)) <> "COMPLETED" then
										    Response.redirect "DotNetFormBuilderChapterA.asp?Op=Edit&IDChapter=" & objChapters("ID") & "&FormSequence=" & lFormSequence 
									    else
										    Response.Write "<TR><TD class=cssWorkFlowDefaultText><a href=DotNetFormBuilderChapterA.asp?Op=Edit&IDChapter=" & objChapters("ID") & "&FormSequence=" & lFormSequence & ">"										
									    end if 
								    case "B"
									    if UCase(Trim(lsFormStatus)) <> "COMPLETED" then
										    Response.Redirect "DotNetFormBuilderChapterB.asp?Op=Edit&IDChapter=" & objChapters("ID") & "&FormSequence=" & lFormSequence 
									    else
										    Response.Write "<TR><TD class=cssWorkFlowDefaultText><a href=DotNetFormBuilderChapterB.asp?Op=Edit&IDChapter=" & objChapters("ID") & "&FormSequence=" & lFormSequence & ">"
									    end if 
								    'case "C"
									    'Response.Write "<TR><TD class=cssWorkFlowDefaultText><a href=formchapterC.asp?IDChapter=" & objChapters("ID")& ">"
							    end select
					        end if 
					        set objChapters = Nothing
                            %>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td class="cssWorkFlowDefaultText">
                        <a href="javascript:ViewEntryData(<%=Session("FormID")%>,<%=Session("Sequence")%>)">
                            Vista Previa del Formulario</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form action="CreateProcessInstance.asp?FormSequence=<%=lFormSequence%>" method="POST"
                            id="frmData" name="frmData">
                            <input <%=senabled%> class="cssButton" type="submit" value="Enviar" id="cmdSend"
                                name="cmdSend">
                        </form>
                        <br />
                        <span class="cssWorkFlowTextBold">
                            <asp:Label ID="lblPrompt" runat="server" Text=""></asp:Label>
                        </span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>



</asp:Content>
