<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/20
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${pageInfo!=null && pageInfo.totalPage>0 }">
    <div class="row">
        <span></span>

        <nav class=" text-right" style="padding-right:15px;">
            <ul class="pagination pagination-lg">
                <c:if test="${pageInfo.pageNum>1 }">
                    <li>
                        <a href="javascript:void(0);" aria-label="Previous" onclick=" return goPage(${pageInfo.pageNum-1});">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${pageInfo.pageNum<=1 }">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach begin="1" end="${pageInfo.totalPage }" var="p">
                    <c:if test="${pageInfo.pageNum==p }">
                        <li class="disabled"><a href="javascript:void(0);">${p }</a></li>
                    </c:if>
                    <c:if test="${pageInfo.pageNum!=p }">
                        <li><a href="javascript:void(0);" onclick="goPage(${p});">${p}</a></li>
                    </c:if>

                </c:forEach>

                <c:if test="${pageInfo.pageNum<pageInfo.totalPage }">
                    <li>
                        <a href="javascript:void(0);" aria-label="Next" onclick="goPage(${pageInfo.pageNum+1});return false;">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${pageInfo.pageNum>=pageInfo.totalPage }">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Next" >
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>
</c:if>
