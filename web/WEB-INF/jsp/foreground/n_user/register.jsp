<%--
  Created by IntelliJ IDEA.
  User: AngryFeng
  Date: 16-10-14
  Time: 下午10:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="${ctx}/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/dist/css/index/index.css">
    <link rel="stylesheet" href="${ctx}/dist/css/fileinput.min.css">
    <link rel="stylesheet" href="${ctx}/dist/css/n_user/register.css">
    <title>注册</title>
</head>
<body>
<header class="header-box">
    <a href="${ctx}/index"><img src="${ctx}/imgs/logo.png"></a>
    <a class="g-index" href="${ctx}/index">回到首页</a>
</header>
<form id="register-form" method="post" enctype="multipart/form-data" action="${ctx}/new-register/register">
    <%--防止重复提交验证token--%>
    <input type="hidden" name="token" value="${token}"/>
    <%--<div class="title">
        <h4>欢迎您的注册，请根据指示正确填写下列表单</h4>
    </div>--%>
    <div class="progress-box">
        <h4>Step1：填写账号信息</h4>
    </div>
    <div id="user-box" class="user-info">
        <table class="table table-bordered">
            <caption class="table-title">账号基本信息（带“<span class="font-x">*</span>”为必填字段）</caption>
            <tr>
                <th><span class="font-x">*</span>账号</th>
                <td><input type="text" name="user.account" id="user-acc" placeholder="请输入4~16位的英文或数字"></td>
                <th>账号昵称</th>
                <td><input type="text"></td>
            </tr>
            <tr>
                <th><span class="font-x">*</span>密码</th>
                <td><input type="password" name="user.password" id="user-pw" placeholder="请输入8~16位的密码"></td>
                <th><span class="font-x">*</span>确认密码</th>
                <td><input type="password" name="rePassword"></td>
            </tr>
            <tr>
                <th><span class="font-x">*</span>申请人姓名</th>
                <td><input type="text" name="user.realName"></td>
                <th><span class="font-x">*</span>申请人身份证</th>
                <td><input type="text" name="user.IDcard"></td>
            </tr>
            <tr>
                <th><span class="font-x">*</span>申请人手机号码</th>
                <td><input type="text" name="user.phoneNum"></td>
                <th><span class="font-x">*</span>申请人联系邮箱</th>
                <td><input type="text" name="user.email"></td>
            </tr>
        </table>
    </div>
    <div class="progress-box">
        <h4>Step2：填写入会申请表信息</h4>
    </div>
    <div class="register-box" id="">
        <table class="table table-bordered page" style="vertical-align: middle">
            <caption class="table-title">广东省价格和产业发展协会入会申请表（带“<span class="font-x">*</span>”为必填字段）</caption>
            <tbody>
            <tr>
                <th><span class="font-x">*</span>单位名称</th>
                <td colspan="3"><input type="text" name="company.name" id="com-name"></td>
                <th width="205px"><span class="font-x">*</span>单位性质</th>
                <td><input type="text" name="company.nature"></td>
            </tr>
            <tr>
                <th><span class="font-x">*</span>通讯地址</th>
                <td colspan="3"><input type="text" name="company.address"></td>
                <th><span class="font-x">*</span>邮政编码</th>
                <td><input type="text" name="company.zipCode" placeholder="六位邮编"></td>
            </tr>
            <tr>
                <th rowspan="2"><span class="font-x">*</span>法人代表</th>
                <th><span class="font-x">*</span>姓名</th>
                <th><span class="font-x">*</span>单位职务</th>
                <th><span class="font-x">*</span>办公电话</th>
                <th colspan="2"><span class="font-x">*</span>手机</th>
            </tr>
            <tr>
                <td><input type="text" name="legalRep.name"></td>
                <td><input type="text" name="legalRep.jobPosition"></td>
                <td><input type="text" name="legalRep.officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2"><input type="text" name="legalRep.cellPhoneNum"><input type="hidden"
                                                                                       name="legalRep.nature" value="2">
                </td>
            </tr>
            <tr>
                <th rowspan="7"><input name="company.join" style="position: absolute; top: -999em;"><span
                        class="font-x">*</span>申请加入
                </th>
                <th colspan="2">协会</th>
                <th colspan="3">会员单位级别</th>
            </tr>
            <tr>
                <td rowspan="2" colspan="2"><input type="checkbox" name="company.associationName"
                                                   value="广东省价格和产业发展协会"
                                                   id="association-name"><label
                        for="association-name">广东省价格和产业发展协会</label>
                </td>
                <td class="my-td-border"><input type="radio" name="company.associationUnit" value="副会长单位"
                                                id="asct-jp1"
                                                disabled="disabled"><label
                        for="asct-jp1">副会长单位</label></td>
                <td class="my-td-border"><input type="radio" name="company.associationUnit" value="监事长单位"
                                                id="asct-jp2"
                                                disabled="disabled"><label
                        for="asct-jp2">监事长单位</label></td>
                <td class="my-td-rborder"><input type="radio" name="company.associationUnit" value="常务理事单位"
                                                 id="asct-jp3" disabled="disabled"><label
                        for="asct-jp3">常务理事单位</label>
                </td>
            </tr>
            <tr>
                <td class="my-td-border"><input type="radio" name="company.associationUnit" value="理事单位"
                                                id="asct-jp4" disabled="disabled"><label for="asct-jp4">理事单位</label>
                </td>
                <td class="my-td-border"><input type="radio" name="company.associationUnit" value="监事单位"
                                                id="asct-jp5" disabled="disabled"><label for="asct-jp5">监事单位</label>
                </td>
                <td class="my-td-rborder"><input type="radio" name="company.associationUnit" value="会员单位"
                                                 id="asct-jp6" disabled="disabled"><label for="asct-jp6">会员单位</label>
                </td>
            </tr>
            <tr>
                <th colspan="2">分会</th>
                <th colspan="3">会员单位级别</th>
            </tr>
            <tr>
                <td class="my-td-tborder"><input type="radio" name="company.chapterName" value="评估鉴定分会"
                                                 id="chapt-name1"/><label for="chapt-name1">评估鉴定分会</label></td>
                <td class="my-td-trborder"><input type="radio" name="company.chapterName" value="电力价格分会"
                                                  id="chapt-name2"/><label for="chapt-name2">电力价格分会</label></td>
                <td class="my-td-tborder"><input type="radio" name="company.chapterUnit" value="会长单位"
                                                 id="chapt-unit1" disabled="disabled"/><label
                        for="chapt-unit1">会长单位</label></td>
                <td class="my-td-tborder"><input type="radio" name="company.chapterUnit" value="副会长单位"
                                                 id="chapt-unit2" disabled="disabled"/><label
                        for="chapt-unit2">副会长单位</label></td>
                <td class="my-td-rborder"><input type="radio" name="company.chapterUnit" value="常务理事单位"
                                                 id="chapt-unit3" disabled="disabled"/><label
                        for="chapt-unit3">常务理事单位</label>
                </td>
            </tr>
            <tr>
                <td class="my-td-border"><input type="radio" name="company.chapterName" value="农产品价格分会"
                                                id="chapt-name3"/><label for="chapt-name3">农产品价格分会</label></td>
                <td class="my-td-rborder"><input type="radio" name="company.chapterName" value="燃气价格分会"
                                                 id="chapt-name4"/><label for="chapt-name4">燃气价格分会</label></td>
                <td colspan="" class="my-td-border"><input type="radio" name="company.chapterUnit" value="理事单位"
                                                           id="chapt-unit4" disabled="disabled"/><label
                        for="chapt-unit4">理事单位</label></td>
                <td class="my-td-border"><input type="radio" name="company.chapterUnit" value="会员单位"
                                                id="chapt-unit5" disabled="disabled"/><label
                        for="chapt-unit5">会员单位</label></td>
                <td class="my-td-rborder" rowspan="2"></td>
            </tr>
            <tr>
                <td class="my-td-border"><input type="radio" name="company.chapterName" value="价格与公平竞争分会"
                                                id="chapt-name5"/><label
                        for="chapt-name5">价格与公平竞争分会</label></td>
                <td class="my-td-rborder">
                    <button type="button" class="btn btn-default hidd" id="cancle-btn1">撤销选择</button>
                </td>
                <!--<td class="my-td-rborder">
                    <button type="button" class="btn btn-default hidd" id="cancle-btn2">撤销选择</button>
                </td>-->
            </tr>
            <tr>
                <th rowspan="4">推荐人选及拟任分会职务
                    <sapn class="tip">（协会副会长单位、分会会长单位和副会长单位至少要有一人）</sapn>
                </th>
                <th>姓名</th>
                <th>单位职务</th>
                <th>协会职务</th>
                <th colspan="2">分会职务</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="introduceds[0].name" class="textarea-sty"
                                          id="intr0-name"></textarea>
                </td>
                <td><input type="text" name="introduceds[0].jobPosition"></td>
                <td><input type="text" name="introduceds[0].asctJobPosition"></td>
                <td colspan="2"><input type="text" name="introduceds[0].chapterJobPosition"></td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <th>办公电话</th>
                <th colspan="2">手机</th>
            </tr>
            <tr>
                <td><input type="text" name="introduceds[0].email"></td>
                <td><input type="text" name="introduceds[0].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2" class="re-positon"><input type="text" name="introduceds[0].cellPhoneNum"><input
                        type="hidden" name="introduceds[0].nature" value="1">
                    <button type="button" class="add-btn" id="add-in0">+</button>
                </td>
            </tr>


            </tbody>
            <tbody id="in-tb2" style="display: none">
            <tr>
                <th rowspan="4">推荐人</th>
                <th>姓名</th>
                <th>单位职务</th>
                <th>协会职务</th>
                <th colspan="2">分会职务</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="introduceds[1].name" class="textarea-sty"
                                          id="intr1-name"></textarea>
                </td>
                <td><input type="text" name="introduceds[1].jobPosition"></td>
                <td><input type="text" name="introduceds[1].asctJobPosition"></td>
                <td colspan="2"><input type="text" name="introduceds[1].chapterJobPosition"></td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <th>办公电话</th>
                <th colspan="2">手机</th>
            </tr>
            <tr>
                <td><input type="text" name="introduceds[1].email"></td>
                <td><input type="text" name="introduceds[1].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2" class="re-positon"><input type="text" name="introduceds[1].cellPhoneNum"><input
                        type="hidden" name="introduceds[1].nature" value="1">
                    <button type="button" class="add-btn" id="add-in1">+</button>
                </td>
            </tr>
            </tbody>

            <tbody id="in-tb3" style="display: none">
            <tr>
                <th rowspan="4">推荐人</th>
                <th>姓名</th>
                <th>单位职务</th>
                <th>协会职务</th>
                <th colspan="2">分会职务</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="introduceds[2].name" class="textarea-sty"
                                          id="intr2-name"></textarea>
                </td>
                <td><input type="text" name="introduceds[2].jobPosition"></td>
                <td><input type="text" name="introduceds[2].asctJobPosition"></td>
                <td colspan="2"><input type="text" name="introduceds[2].chapterJobPosition"></td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <th>办公电话</th>
                <th colspan="2">手机</th>
            </tr>
            <tr>
                <td><input type="text" name="introduceds[2].email"></td>
                <td><input type="text" name="introduceds[2].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2" class="re-positon"><input type="text" name="introduceds[2].cellPhoneNum"><input
                        type="hidden" name="introduceds[2].nature" value="1">
                    <button type="button" class="add-btn" id="add-in2">+</button>
                </td>
            </tr>
            </tbody>


            <tbody id="in-tb4" style="display: none">
            <tr>
                <th rowspan="4">推荐人</th>
                <th>姓名</th>
                <th>单位职务</th>
                <th>协会职务</th>
                <th colspan="2">分会职务</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="introduceds[3].name" class="textarea-sty"
                                          id="intr3-name"></textarea>
                </td>
                <td><input type="text" name="introduceds[3].jobPosition"></td>
                <td><input type="text" name="introduceds[3].asctJobPosition"></td>
                <td colspan="2"><input type="text" name="introduceds[3].chapterJobPosition"></td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <th>办公电话</th>
                <th colspan="2">手机</th>
            </tr>
            <tr>
                <td><input type="text" name="introduceds[3].email"></td>
                <td><input type="text" name="introduceds[3].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2" class="re-positon"><input type="text" name="introduceds[3].cellPhoneNum"><input
                        type="hidden" name="introduceds[3].nature" value="1"></td>
            </tr>
            </tbody>


            <tbody>
            <tr>
                <th rowspan="4"><span class="font-x">*</span>单位指定联系人
                    <sapn class="tip">（至少一人）</sapn>
                </th>
                <th><span class="font-x">*</span>姓名</th>
                <th><span class="font-x">*</span>单位职务</th>
                <th><span class="font-x">*</span>办公电话</th>
                <th colspan="2"><span class="font-x">*</span>手机</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="designatedContacts[0].name" class="textarea-sty"></textarea></td>
                <td><input type="text" name="designatedContacts[0].jobPosition"></td>
                <td><input type="text" name="designatedContacts[0].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2"><input type="text" name="designatedContacts[0].cellPhoneNum"></td>
            </tr>
            <tr>
                <th><span class="font-x">*</span>电子邮箱</th>
                <th>传真号码</th>
                <th colspan="2"><span class="font-x">*</span>微信号/QQ号</th>
            </tr>
            <tr>
                <td><input type="text" name="designatedContacts[0].email"></td>
                <td><input type="text" name="designatedContacts[0].faxNum" placeholder="区号-号码"></td>
                <td colspan="2" class="re-positon"><input type="text" name="designatedContacts[0].onlineNum"><input
                        type="hidden" name="designatedContacts[0].nature" value="0">
                    <button type="button" class="add-btn" id="add-dis0">+</button>
                </td>
            </tr>
            </tbody>


            <tbody id="dis-tb2" style="display: none">
            <tr>
                <th rowspan="4">单位指定联系人</th>
                <th>姓名</th>
                <th>单位职务</th>
                <th>办公电话</th>
                <th colspan="2">手机</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="designatedContacts[1].name" class="textarea-sty"
                                          id="desiCont-name1"></textarea></td>
                <td><input type="text" name="designatedContacts[1].jobPosition"></td>
                <td><input type="text" name="designatedContacts[1].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2"><input type="text" name="designatedContacts[1].cellPhoneNum"></td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <th>传真号码</th>
                <th colspan="2">微信号/QQ号</th>
            </tr>
            <tr>
                <td><input type="text" name="designatedContacts[1].email"></td>
                <td><input type="text" name="designatedContacts[1].faxNum" placeholder="区号-号码"></td>
                <td colspan="2" class="re-positon"><input type="text" name="designatedContacts[1].onlineNum"><input
                        type="hidden" name="designatedContacts[1].nature" value="0">
                    <button type="button" class="add-btn" id="add-dis1">+</button>
                </td>
            </tr>
            </tbody>


            <tbody id="dis-tb3" style="display: none">
            <tr>
                <th rowspan="4">单位指定联系人</th>
                <th>姓名</th>
                <th>单位职务</th>
                <th>办公电话</th>
                <th colspan="2">手机</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="designatedContacts[2].name" class="textarea-sty"
                                          id="desiCont-name2"></textarea></td>
                <td><input type="text" name="designatedContacts[2].jobPosition"></td>
                <td><input type="text" name="designatedContacts[2].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2"><input type="text" name="designatedContacts[2].cellPhoneNum"></td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <th>传真号码</th>
                <th colspan="2">微信号/QQ号</th>
            </tr>
            <tr>
                <td><input type="text" name="designatedContacts[2].email"></td>
                <td><input type="text" name="designatedContacts[2].faxNum" placeholder="区号-号码"></td>
                <td colspan="2" class="re-positon"><input type="text" name="designatedContacts[2].onlineNum"><input
                        type="hidden" name="designatedContacts[2].nature" value="0">
                    <button type="button" class="add-btn" id="add-dis2">+</button>
                </td>
            </tr>
            </tbody>


            <tbody id="dis-tb4" style="display: none">
            <tr>
                <th rowspan="4">单位指定联系人</th>
                <th>姓名</th>
                <th>单位职务</th>
                <th>办公电话</th>
                <th colspan="2">手机</th>
            </tr>
            <tr>
                <td rowspan="3"><textarea name="designatedContacts[3].name" class="textarea-sty"
                                          id="desiCont-name3"></textarea></td>
                <td><input type="text" name="designatedContacts[3].jobPosition"></td>
                <td><input type="text" name="designatedContacts[3].officePhoneNum" placeholder="区号-号码"></td>
                <td colspan="2"><input type="text" name="designatedContacts[3].cellPhoneNum"></td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <th>传真号码</th>
                <th colspan="2">微信号/QQ号</th>
            </tr>
            <tr>
                <td><input type="text" name="designatedContacts[3].email"></td>
                <td><input type="text" name="designatedContacts[3].faxNum" placeholder="区号-号码"></td>
                <td colspan="2"><input type="text" name="designatedContacts[3].onlineNum"><input type="hidden"
                                                                                                 name="designatedContacts[3].nature"
                                                                                                 value="0"></td>
            </tr>
            </tbody>


            <tbody>
            <tr>
                <th>单位简介<span class="tip">（300字以内）</span></th>
                <td colspan="5"><textarea name="company.introduction" class="intrud-sty"></textarea></td>
            </tr>
            <tr>
                <th>希望得到协会或者分会服务和支持的主要内容</th>
                <td colspan="7"><textarea name="company.demand" class="intrud-sty"></textarea>
            </tr>
            <tr>
                <th>入会申请确认</th>
                <td colspan="5" height="180px">
                    <p class="confirm">
                        <span class="ag"><input type="checkbox" name="f-agg" required/></span>我已阅读并同意如下要求：本单位研究协会章程后，决定承认<a
                            data-toggle="modal"
                            data-target="#myModal">《广东省价格和产业发展协会章程》</a>，自愿申请加入<input type="checkbox" name="joinaname"
                                                                                     disabled><span
                            id="joinname-sp1">广东省价格和产业发展协会</span>（<input type="radio" name="joinaunit" disabled><span
                            id="joinainit-sp1">副会长单位</span>
                        <input type="radio" name="joinaunit" disabled><span
                            id="joinainit-sp2">监事长单位</span><input type="radio" name="joinaunit" disabled><span
                            id="joinainit-sp3">常务理事单位</span>
                        <input type="radio" name="joinaunit" disabled><span
                            id="joinainit-sp4">理事单位</span><input type="radio" name="joinaunit" disabled><span
                            id="joinainit-sp5">监事单位</span>
                        <input type="radio" name="joinaunit" disabled><span
                            id="joinainit-sp6">会员单位</span>）<input type="checkbox" name="joinname" disabled><span
                            id="joinname-sp2">评估鉴证分会</span>
                        <input type="checkbox" name="joinname" disabled><span id="joinname-sp3">电力价格分会</span><input
                            type="checkbox" name="joinname"
                            disabled><span id="joinname-sp4">农产品价格分会</span><input
                            type="checkbox" name="joinname" disabled><span id="joinname-sp5">燃气价格分会</span><input
                            type="checkbox" name="joinname" disabled><span id="joinname-sp6">价格与公平竞争分会</span>（<input
                            type="radio" name="joincunit" disabled><span id="joincuinit-sp1">会长单位</span><input
                            type="radio" name="joincunit" disabled><span id="joincuinit-sp2">副会长单位</span><input
                            type="radio"
                            name="joincunit"
                            disabled><span
                            id="joincuinit-sp3">常务理事单位</span>
                        <input type="radio" name="joincunit" disabled><span id="joincuinit-sp4">理事单位</span>
                        <input type="radio" name="joincunit" disabled><span id="joincuinit-sp5">会员单位</span>），在享有会员权利的同时，承诺履行下列会员义务：一、遵守协会章程，执行协会的决议；二、积极参加协会及分会组织的各项活动；三、承办协会及分会委托的事项；四、按时缴纳会费；五、及时向协会及分会反映情况，提供信息。
                    </p>
                </td>
            </tr>
            </tbody>
            <tbody>
            <tr>
                <th width="150px">附件上传与下载</th>
                <th width="205px">附件下载</th>
                <td width="205px"><a
                        href="${ctx}/new-register/downloadApplication?filePath=upload/doc/application.docx">申请表下载</a>
                </td>
                <th width="205px"><span class="font-x">*</span>附件上传</th>
                <td colspan="2"><input type="file" name="fileName"></td>
            </tr>
            </tbody>
        </table>
        <div><span class="font-x">备注：请下载附件打印成纸质文档，填写完毕加盖公章扫描后上传留作存档；各分会会员是广东省价格和产业发展协会的当然会员。</span></div>
        <button type="submit" class="btn btn-default register-btn">完成注册</button>
    </div>
</form>
<jsp:include page="../footer.jsp"></jsp:include>



<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
                <h2 class="modal-title" id="myModalLabel">广东省价格协会章程</h2>
            </div>
            <div class="modal-body" style="line-height: 1.5">
                <p style="text-indent: 2em">
                    ...
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>
</body>
<script src="${ctx}/dist/js/jquery.min.js"></script>
<script src="${ctx}/dist/js/bootstrap.min.js"></script>
<script src="${ctx}/dist/js/fileinput.min.js"></script>
<script src="${ctx}/dist/js/user/jquery.validate.js"></script>
<script src="${ctx}/dist/js/n_user/form-validate.js"></script>
<script src="${ctx}/dist/js/user/messages_cn.js"></script>
<script>
    $(function () {
        //控制点击表单input/password/textarea后表格的样式
        $("input:text").focus(function () {
            $(this).parent().addClass("my-form-control");
        });
        $("input:text").blur(function () {
            $(this).parent().removeClass("my-form-control")
        });
        $("input:password").focus(function () {
            $(this).parent().addClass("my-form-control");
        });
        $("input:password").blur(function () {
            $(this).parent().removeClass("my-form-control")
        });
        $("textarea").focus(function () {
            $(this).parent().addClass("my-form-control");
        });
        $("textarea").blur(function () {
            $(this).parent().removeClass("my-form-control")
        });

        //点击“广东省×××协会”的js
        $("input[name='company.associationName']").click(
                function () {
                    if ($("input[name='company.associationName']").get(0).checked == true) {
                        $("input[name='company.associationUnit']").get(0).checked = true;
                        $("input[name='company.associationUnit']").removeAttr("disabled");
                        addJoinNameCheck();
                        addJoinAUnitCheck();
                    } else {
                        $("input[name='company.associationUnit']").removeAttr("checked");
                        removeJoinNameCheck();
                        removeJoinAUnitCheck();
                        $("input[name='company.associationUnit']").attr("disabled", "disabled");
                    }
                }
        )

        //点击“广东省×××协会”后的会员单位级别 触发的js
        $("input[name='company.associationUnit']").click(
                function () {
                    addJoinAUnitCheck();
                }
        )

        //点击“分会”的js
        $("input[name='company.chapterName']").click(
                function () {
                    $("#cancle-btn1").removeClass("hidd");
                    $("input[name='company.chapterUnit']").removeAttr("disabled");
                    /*for (var i = 0; i < $("input[name='company.chapterUnit']").length; i++) {
                     if ($("input[name='company.chapterUnit']").get(i).checked == true) {
                     return;
                     }
                     }*/
                    if ($("input[name='company.chapterUnit']:checked").length == 0) {
                        $("input[name='company.chapterUnit']").get(0).checked = true;
                        addJoinCUnitCheck();
                    }
                    /*$("#cancle-btn2").removeClass("hidd");*/
                    addJoinCNameCheck();
                    return;
                }
        );

        //点击“分会”后的会员单位级别 触发的js
        $("input[name='company.chapterUnit']").click(
                function () {
                    addJoinCUnitCheck();
                }
        )

        //点击“撤销选择”触发的js
        $("#cancle-btn1").click(
                function () {
                    $(this).addClass("hidd");
                    $("input[name='company.chapterName']").removeAttr("checked");
                    $("input[name='company.chapterUnit']").removeAttr("checked");
                    $("input[name='company.chapterUnit']").attr("disabled", "disabled");
//                    $("#cancle-btn2").addClass("hidd");
                    removeJoinCNameCheck();
                    removeJoinCUnitCheck();
                    return;
                }
        );

        /*$("input[name='company.chapterUnit']").click(
         function () {
         $("#cancle-btn2").removeClass("hidd");
         return;
         }
         );

         $("#cancle-btn2").click(
         function () {
         $(this).addClass("hidd");
         $("input[name='company.chapterUnit']").removeAttr("checked");
         return;
         }
         );*/

        $("#add-in0").click(
                function () {
                    if ($("#add-in0").text() == "-") {
                        $("#add-in0").text("+");
                    } else {
                        $("#add-in0").text("-");
                    }
                    $("#in-tb2").toggle();
                }
        );
        $("#add-in1").click(
                function () {
                    if ($("#add-in1").text() == "-") {
                        $("#add-in1").text("+");
                    } else {
                        $("#add-in1").text("-");
                    }
                    $("#in-tb3").toggle();
                }
        );
        $("#add-in2").click(
                function () {
                    if ($("#add-in2").text() == "-") {
                        $("#add-in2").text("+");
                    } else {
                        $("#add-in2").text("-");
                    }
                    $("#in-tb4").toggle();
                }
        );

        $("#add-dis0").click(
                function () {
                    if ($("#add-dis0").text() == "-") {
                        $("#add-dis0").text("+");
                    } else {
                        $("#add-dis0").text("-");
                    }
                    $("#dis-tb2").toggle();
                }
        );
        $("#add-dis1").click(
                function () {
                    if ($("#add-dis1").text() == "-") {
                        $("#add-dis1").text("+");
                    } else {
                        $("#add-dis1").text("-");
                    }
                    $("#dis-tb3").toggle();
                }
        );
        $("#add-dis2").click(
                function () {
                    if ($("#add-dis2").text() == "-") {
                        $("#add-dis2").text("+");
                    } else {
                        $("#add-dis2").text("-");
                    }
                    $("#dis-tb4").toggle();
                }
        );

    })

    function addJoinNameCheck() {
        $("input[name='joinaname']").get(0).checked = true;
        $("#joinname-sp1").addClass("font-x");
    }
    function removeJoinNameCheck() {
        $("input[name='joinaname']").removeAttr("checked");
        $("#joinname-sp1").removeClass("font-x");
    }
    function addJoinAUnitCheck() {
        removeJoinAUnitCheck();
        var value = $("input[name='company.associationUnit']:checked").val()
        switch (value.toString()) {
            case "副会长单位":
                $("input[name='joinaunit']").get(0).checked = true;
                $("#joinainit-sp1").addClass("font-x");
                break;
            case "监事长单位":
                $("input[name='joinaunit']").get(1).checked = true;
                $("#joinainit-sp2").addClass("font-x");
                break;
            case "常务理事单位":
                $("input[name='joinaunit']").get(2).checked = true;
                $("#joinainit-sp3").addClass("font-x");
                break;
            case "理事单位":
                $("input[name='joinaunit']").get(3).checked = true;
                $("#joinainit-sp4").addClass("font-x");
                break;
            case "监事单位":
                $("input[name='joinaunit']").get(4).checked = true;
                $("#joinainit-sp5").addClass("font-x");
                break;
            case "会员单位":
                $("input[name='joinaunit']").get(5).checked = true;
                $("#joinainit-sp6").addClass("font-x");
                break;
        }
        /*for(var i = 0; i < $("input[name='company.associationUnit']").length; i++) {

         }*/
    }
    function removeJoinAUnitCheck() {
        $("input[name='joinaunit']:checked").next("span").removeClass("font-x");
        $("input[name='joinaunit']").removeAttr("checked");
    }

    function addJoinCNameCheck() {
        removeJoinCNameCheck();
        var value = $("input[name='company.chapterName']:checked").val();
        switch (value.toString()) {
            case "评估鉴定分会":
                $("input[name='joinname']").get(0).checked = true;
                $("#joinname-sp2").addClass("font-x");
                break;
            case "电力价格分会":
                $("input[name='joinname']").get(1).checked = true;
                $("#joinname-sp3").addClass("font-x");
                break;
            case "农产品价格分会":
                $("input[name='joinname']").get(2).checked = true;
                $("#joinname-sp4").addClass("font-x");
                break;
            case "燃气价格分会":
                $("input[name='joinname']").get(3).checked = true;
                $("#joinname-sp5").addClass("font-x");
                break;
            case "价格与公平竞争分会":
                $("input[name='joinname']").get(4).checked = true;
                $("#joinname-sp6").addClass("font-x");
                break;
        }
    }

    function removeJoinCNameCheck() {
        $("input[name='joinname']:checked").next("span").removeClass("font-x");
        $("input[name='joinname']").removeAttr("checked");
    }

    function addJoinCUnitCheck() {
        removeJoinCUnitCheck();
        var value = $("input[name='company.chapterUnit']:checked").val();
        switch (value.toString()) {
            case "会长单位":
                $("input[name='joincunit']").get(0).checked = true;
                $("#joincuinit-sp1").addClass("font-x");
                break;
            case "副会长单位":
                $("input[name='joincunit']").get(1).checked = true;
                $("#joincuinit-sp2").addClass("font-x");
                break;
            case "常务理事单位":
                $("input[name='joincunit']").get(2).checked = true;
                $("#joincuinit-sp3").addClass("font-x");
                break;
            case "理事单位":
                $("input[name='joincunit']").get(3).checked = true;
                $("#joincuinit-sp4").addClass("font-x");
                break;
            case "会员单位":
                $("input[name='joincunit']").get(4).checked = true;
                $("#joincuinit-sp5").addClass("font-x");
                break;
        }
    }

    function removeJoinCUnitCheck() {
        $("input[name='joincunit']:checked").next("span").removeClass("font-x");
        $("input[name='joincunit']").removeAttr("checked");
    }

   /* $('#file-upload').fileinput({
        showUpload: false
    });*/
</script>
</html>