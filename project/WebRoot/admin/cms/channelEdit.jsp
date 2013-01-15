<%@ page language="java" pageEncoding="UTF-8"%>
<%@   taglib   uri = "http://ckfinder.com"   prefix = "ckfinder"   %>   
<%@   taglib   uri = "http://ckeditor.com"   prefix = "ckeditor"   %>   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.util.UUID"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@include file="../../util/checkParentFrame.jsp" %>
		<link rel="stylesheet" href="../../img/common.css" type="text/css" />
		<link rel="stylesheet" href="../../img/style.css" type="text/css" />
		<link rel="stylesheet" href="../../img/style3.css" type="text/css" />

	<link rel="stylesheet" href="../../js/jquery.treeview.css" />
	
	<script src="../../js/jquery-1.5.1.min.js" type="text/javascript"></script>
	<script src="../../js/jquery.cookie.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.edit.js" type="text/javascript"></script>
	<script src="../../js/jquery.treeview.async.js" type="text/javascript"></script>
		<script type="text/javascript" src="../../js/weebox0.4/bgiframe.js"></script>
		<script type="text/javascript" src="../../js/weebox0.4/weebox.js"></script>
		<link type="text/css" rel="stylesheet" href="../../js/weebox0.4/weebox_css.jsp" />
		<script type="text/javascript" src="../../js/checkLoginName.js"></script>
		<script type="text/javascript" src="js/channelEdit.js">
		</script>
		<form action="channel_editDo.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="site.id" value="${site.id }">
<input type="hidden" name="channel.site" value="${site.id }">
<input type="hidden" name="channel.parid" value="${channel.parid }">
<input type="hidden" name="channel.id" id="channelId" value="${channel.id }">
			<DIV class=column>
				<TABLE cellSpacing=4 cellPadding=4 width="95%" align=center>
					<TBODY>
						<TR >
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label>
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>站点名称：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';"  readonly
									class=colorblur onfocus="this.className='colorfocus';"  
									maxLength=50 type=text name=site.name value="${site.name }">
								<SPAN  id=ctl03>*</SPAN>
							</TD>
						</TR>
						<s:if test="%{channel.id!=null}">
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=栏目的唯一标识
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>栏目ID：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';"  readonly
									class=colorblur onfocus="this.className='colorfocus';" 
									maxLength=50 type=text value="${channel.id }" size="50">
							</TD>
						</TR>
						</s:if>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=请输入栏目名称
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>栏目名称：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=name
									class=colorblur onfocus="this.className='colorfocus';" 
									maxLength=50 type=text name=channel.name value="${channel.name }">
								<SPAN  id=ctl03>*</SPAN>
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=请输入栏目的页面标识，用于唯一区分此栏目在页面中的位置。
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>页面标识：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=pagemark
									class=colorblur onfocus="this.className='colorfocus';" 
									maxLength=50 type=text name=channel.pagemark value="${channel.pagemark }">
							</TD>
						</TR>
						
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl02_ctl00_label>
									<IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl02_ctl00_imgHelp tabIndex=-1 title=请选择有效性
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl02_ctl00_lblLabel>有效：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD align="left">
								<input type="radio" id="isok1" name="channel.state" value="1" <s:if test="channel==null || channel.state==null || channel.state==1">checked="checked"</s:if>>是
								<input type="radio" id="isok0" name="channel.state" value="0" <s:if test="channel.state==0">checked="checked"</s:if> >否
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl02_ctl00_label>
									<IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl02_ctl00_imgHelp tabIndex=-1 title=如果状态为是，则会在栏目导航中显示
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl02_ctl00_lblLabel>导航：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD align="left">
								<input type="radio" id="isok1" name="channel.navigation" value="1" <s:if test="channel==null || channel.navigation==null || channel.navigation==1">checked="checked"</s:if>>是
								<input type="radio" id="isok0" name="channel.navigation" value="0" <s:if test="channel.navigation==0">checked="checked"</s:if> >否
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=请输入排列顺序
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>序号：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=ordernum
									class=colorblur onfocus="this.className='colorfocus';" onkeyup=if(isNaN(value))execCommand('undo') onafterpaste=if(isNaN(value))execCommand('undo') 
									maxLength=50 type=text name=channel.ordernum value="${channel.ordernum }">
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=此栏目的页面链接地址
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>链接地址：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=url
									class=colorblur onfocus="this.className='colorfocus';" 
									maxLength=250 type=text size="45" name=channel.url value="${channel.url }">
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=请选择此栏目的页面模板，默认为站点所选模板中的栏目页面.html
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>栏目模板：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=templet readonly style="cursor:hand" title="点击选择模板文件"
									class=colorblur onfocus="this.className='colorfocus';" onclick="selectTempletFile('${site.indextemplet }','templet')"
									maxLength=50 type=text name=channel.templet value="${channel.templet }">
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=请选择此栏目的信息模板，默认为站点所选模板中的信息页面.html
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>信息模板：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<INPUT onblur="this.className='colorblur';" id=contenttemplet  readonly style="cursor:hand" title="点击选择模板文件"
									class=colorblur onfocus="this.className='colorfocus';" onclick="selectTempletFile('${site.indextemplet }','contenttemplet')"
									maxLength=50 type=text name=channel.contenttemplet value="${channel.contenttemplet }">
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left">
								<LABEL id=ctl02_ctl00_label>
									<IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl02_ctl00_imgHelp tabIndex=-1 title=请上传栏目图片
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl02_ctl00_lblLabel>栏目图片：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD align="left"> 
							<input type="hidden" id="oldImg" name="oldImg" value="${channel.img }"/>
							<s:if test='%{channel.img!=null && channel.img != "" && channel.img != "null"}'>
							<span id="oldImgSpan">
							<a href="<%=basePath %>${channel.img }?date=<%=UUID.randomUUID() %>" target="_blank">
							<img src="<%=basePath %>${channel.img }?date=<%=UUID.randomUUID() %>" width="180" height="42" title="点击查看大图"/>
							</a>
							<a href="javascript:delImg()">删除</a>
							</span>
							<br/>
							</s:if>
									<input type="file" name="img" id="img">
							</TD>
						</TR>
						<TR>
							<TD width="30%" align="left" >
								<LABEL id=ctl01_ctl00_label><IMG
											style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
											id=ctl01_ctl00_imgHelp tabIndex=-1 title=请输入此栏目的描述
											src="../../img/help.gif">
									<NOBR>
										<SPAN id=ctl01_ctl00_lblLabel>栏目描述：</SPAN>
									</NOBR>
								</LABEL>
							</TD>
							<TD width="70%" align="left">
								<input type="hidden" id="descOpenCloseV" value="0"/>
								<a href="#"  onclick="descOpenClose()"><span id="descSpan">点击展开</span></a>
							</TD>
						</TR>
						<TR>
							<TD width="70%" align="left"  colspan="10" id="dsecTd" style="display:none">
    							<textarea   cols = "80"   id = "editor1"   name = "channel.description"   rows = "10" >${channel.description }</textarea >
								<script type="text/javascript" src="<%=checkParentPath %>/admin/ckeditor/ckeditor.js?t=B37D54V"></script>
								<script type="text/javascript">//<![CDATA[
								CKEDITOR.replace('editor1', {"filebrowserImageBrowseUrl":"\<%=checkParentPath %>\/admin\/ckfinder\/ckfinder.html?type=Images","filebrowserBrowseUrl":"\<%=checkParentPath %>\/admin\/ckfinder\/ckfinder.html","filebrowserFlashBrowseUrl":"\<%=checkParentPath %>\/admin\/ckfinder\/ckfinder.html?type=Flash","filebrowserUploadUrl":"\<%=checkParentPath %>\/ckfinder\/core\/connector\/java\/connector.java?command=QuickUpload&type=Files","filebrowserImageUploadUrl":"\<%=checkParentPath %>\/ckfinder\/core\/connector\/java\/connector.java?command=QuickUpload&type=Images","filebrowserFlashUploadUrl":"\<%=checkParentPath %>\/ckfinder\/core\/connector\/java\/connector.java?command=QuickUpload&type=Flash"});
								//]]></script>
								<input type="hidden" id="ckfinderCurrentFolder" value="${currentFolder }"/>
								<input type="hidden" id="ckfinderBasePath" value="<%=checkParentPath %>"/>
							</TD>
						</TR>
						<TR>
							<TD  align="center" colspan="10">
							<input type="button" value="保存" onclick="save(this.form)"  class="button"  />&nbsp;
							<s:if test='%{channel!=null && channel.id != null && channel.id != "null" && channel.id != "" }'>
							<input type="button" value="删除" onclick="del('${channel.id }')"  class="button"  />&nbsp;
							<input type="button" value="添加下级栏目" onclick="addSon('${channel.id }','${site.id }')"  class="button"  <s:if test="%{!#session.siteAdmin}">style="display:none"</s:if>/>
							<input type="button" value="改变所属栏目" onclick="parButton('${channel.id }')"  class="button"  <s:if test="%{!#session.siteAdmin}">style="display:none"</s:if>/>
							</s:if>
							</TD>
						</TR>
						
					</TBODY>
				</TABLE>
			</DIV>
			</form>