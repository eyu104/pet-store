<%@ include file="../common/top.jsp"%>

<div id="BackLink">
<%--    <stripes:link--%>
<%--        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"--%>
<%--        event="viewProduct">--%>
<%--    <stripes:param name="productId" value="${actionBean.product.productId}" />--%>
<%--    Return to ${actionBean.product.productId}--%>
<%--</stripes:link>--%>
    <a href="productForm?productId=${sessionScope.product.productId}">Return to ${sessionScope.product.productId}</a>
</div>

<div id="Catalog">

    <table>
        <tr>
            <td>${sessionScope.product.description}</td>
        </tr>
        <tr>
            <td><b> ${sessionScope.item.itemId} </b></td>
        </tr>
        <tr>
            <td><b><font size="4"> ${sessionScope.item.attribute1}
                ${sessionScope.item.attribute2} ${sessionScope.item.attribute3}
                ${sessionScope.item.attribute4} ${sessionScope.item.attribute5}
                ${sessionScope.product.name} </font></b></td>
        </tr>
        <tr>
            <td>${sessionScope.product.name}</td>
        </tr>
        <tr>
            <td><c:if test="${sessionScope.item.quantity <= 0}">
                Back ordered.
            </c:if> <c:if test="${sessionScope.item.quantity > 0}">
                ${sessionScope.item.quantity} in stock.
            </c:if></td>
        </tr>
        <tr>
            <td><fmt:formatNumber value="${sessionScope.item.listPrice}"
                                  pattern="$#,##0.00" /></td>
        </tr>

        <tr>
            <td>

<%--                <stripes:link class="Button"--%>
<%--                              beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"--%>
<%--                              event="addItemToCart">--%>
<%--                <stripes:param name="workingItemId" value="${actionBean.item.itemId}" />--%>
<%--                Add to Cart--%>
<%--            </stripes:link>--%>

                <a href="addItemToCart?workingItemId=${item.itemId}" class="Button">Add to Cart</a>
            </td>
        </tr>
    </table>

</div>

<%@ include file="../common/bottom.jsp"%>


