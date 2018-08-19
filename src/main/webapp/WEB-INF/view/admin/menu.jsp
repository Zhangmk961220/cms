<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="collapse navbar-collapse" id="navbarResponsive">
    <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
            <a class="nav-link" href="#">
                <i class="fa fa-fw fa-dashboard"></i>
                <span class="nav-link-text">Dashboard</span>
            </a>
        </li>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
            <a class="nav-link" href="${pageContext.request.contextPath}/categoryManagement.do">
                <i class="fa fa-fw fa-dashboard"></i>
                <span class="nav-link-text">Category Management</span>
            </a>
        </li>

        <c:forEach items="${categories}" var="c">
            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
                    <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#category_${c.id}"
                       data-parent="#exampleAccordion">
                        <i class="fa fa-fw fa-pencil"></i>
                        <span class="nav-link-text"><c:out value="${c.name}" /></span>
                    </a>
                <ul class="sidenav-second-level collapse" id="category_${c.id}">
                    <c:forEach items="${c.entities}" var="e">
                        <li>
                            <a href="${pageContext.request.contextPath}/articleList.do"><c:out value="${e.name}" /></a>
                        </li>
                 </c:forEach>
                </ul>
            </li>
        </c:forEach>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="系统管理">
            <a class="nav-link" href="${pageContext.request.contextPath}/">
                <i class="fa fa-fw fa-cog"></i>
                <span class="nav-link-text">System mange</span>
            </a>
        </li>

        <%--<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">--%>
            <%--<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti"--%>
               <%--data-parent="#exampleAccordion">--%>
                <%--<i class="fa fa-fw fa-pencil"></i>--%>
                <%--<span class="nav-link-text"> Content edit </span>--%>
            <%--</a>--%>

            <%--<ul class="sidenav-second-level collapse" id="collapseMulti">--%>
                <%--<li>--%>
                    <%--<a href="${pageContext.request.contextPath}/articleList.do"> article </a>--%>
                    <%--&lt;%&ndash;<a href="article.jsp" data-toggle="collapse" data-target="#artList">article</a>&ndash;%&gt;--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="${pageContext.request.contextPath}/getCategories.do"> article </a>--%>
                    <%--&lt;%&ndash;<a href="article.jsp" data-toggle="collapse" data-target="#artList">article</a>&ndash;%&gt;--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="${pageContext.request.contextPath}/queryMediaList.do">media</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a class="nav-link" href="/formList.do">--%>
                        <%--&lt;%&ndash;<i class="fa fa-fw fa-table"></i>&ndash;%&gt;--%>
                        <%--<span>form </span>--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
        <%--</li>--%>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
            <a class="nav-link" href="/QuestionListView.do">
                <i class="fa fa-fw fa-question"></i>
                <span class="nav-link-text"> Question </span>
            </a>
        </li>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages"
               data-parent="#exampleAccordion">
                <i class="fa fa-fw fa-user"></i>
                <span class="nav-link-text">User</span>
            </a>
            <ul class="sidenav-second-level collapse" id="collapseExamplePages">
                <li>
                    <a href="${pageContext.request.contextPath}/queryEditorList.do">user list</a>
                </li>
            </ul>
        </li>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents"
               data-parent="#exampleAccordion">
                <i class="fa fa-fw  fa-refresh"></i>
                <span class="nav-link-text">template mange</span>
            </a>
            <ul class="sidenav-second-level collapse" id="collapseComponents">
                <li>
                    <a href="#">skin</a>
                </li>
            </ul>
        </li>

        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
            <a class="nav-link" href="https://github.com/domarshmello/cms">
                <i class="fa fa-fw fa-github"></i>
                <span class="nav-link-text">github</span>
            </a>
        </li>

    </ul>
    <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
            <a class="nav-link text-center" id="sidenavToggler">
                <i class="fa fa-fw fa-angle-left"></i>
            </a>
        </li>
    </ul>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-fw fa-envelope"></i>
                <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
                <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
            </a>
            <div class="dropdown-menu" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">New Messages:</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
                    <strong>David Miller</strong>
                    <span class="small float-right text-muted">11:21 AM</span>
                    <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome!
                        These messages clip off when they reach the end of the box so they don't overflow over to
                        the sides!
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
                    <strong>Jane Smith</strong>
                    <span class="small float-right text-muted">11:21 AM</span>
                    <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00
                        instead of 4:00. Thanks!
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
                    <strong>John Doe</strong>
                    <span class="small float-right text-muted">11:21 AM</span>
                    <div class="dropdown-message small">I've sent the final files over to you for review. When
                        you're able to sign off of them let me know and we can discuss distribution.
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item small" href="#">View all messages</a>
            </div>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-fw fa-bell"></i>
                <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
                <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
            </a>
            <div class="dropdown-menu" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">New Alerts:</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
                    <span class="small float-right text-muted">11:21 AM</span>
                    <div class="dropdown-message small">This is an automated server response message. All systems
                        are online.
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
                    <span class="small float-right text-muted">11:21 AM</span>
                    <div class="dropdown-message small">This is an automated server response message. All systems
                        are online.
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
                    <span class="small float-right text-muted">11:21 AM</span>
                    <div class="dropdown-message small">This is an automated server response message. All systems
                        are online.
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item small" href="#">View all alerts</a>
            </div>
        </li>
        <li class="nav-item">
            <form class="form-inline my-2 my-lg-0 mr-lg-2">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for...">
                    <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
    </ul>
</div>