/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.36
 * Generated at: 2024-07-25 10:07:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.View;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;

public final class EditProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/C:/Users/Administrator/Downloads/AP%20CW%202/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/MediaTech/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/fn.tld", Long.valueOf(1425957970000L));
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1714931401585L));
    _jspx_dependants.put("jar:file:/C:/Users/Administrator/Downloads/AP%20CW%202/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/MediaTech/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425957970000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Date");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("    \n");
      out.write("        \n");
      out.write("            \n");
      out.write("\n");
      out.write("                <!DOCTYPE html>\n");
      out.write("                <html lang=\"en\">\n");
      out.write("\n");
      out.write("                <head>\n");
      out.write("                    <meta charset=\"UTF-8\">\n");
      out.write("                    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("                    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("                    <title>Document</title>\n");
      out.write("\n");
      out.write("                    <link rel=\"stylesheet\" href=\"https://unpkg.com/boxicons@latest/css/boxicons.min.css\">\n");
      out.write("                    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/View/CSS/register.css\">\n");
      out.write("                    <link rel=\"stylesheet\"\n");
      out.write("                        href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css\">\n");
      out.write("                </head>\n");
      out.write("\n");
      out.write("                <body>\n");
      out.write("                    ");
      //  c:set
      org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
      _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f0.setParent(null);
      // /View/EditProfile.jsp(22,20) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("time");
      // /View/EditProfile.jsp(22,20) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new Date().getTime() );
      int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
      if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
        return;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      out.write("\n");
      out.write("                    <section class=\"sign-up\">\n");
      out.write("                        <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/updateProfile\" method=\"POST\"\n");
      out.write("                            enctype=\"multipart/form-data\">\n");
      out.write("                            <div class=\"input-field\">\n");
      out.write("                                <h1>Edit Profile</h1>\n");
      out.write("\n");
      out.write("                                <div class=\"image-field\" id=\"image-field\">\n");
      out.write("                                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Images/UserImage/");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(".png?v=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${time}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("                                        class=\"showImage\" width=\"200px\" height=\"200px\">\n");
      out.write("                                    <input type=\"file\" id=\"file\" name=\"image\" class=\"imageChooser\"\n");
      out.write("                                        onchange=\"onImageChange()\" />\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"fields\">\n");
      out.write("                                    <span class=\"name\">\n");
      out.write("                                        <label for=\"name\">Name: </label>\n");
      out.write("                                        <input type=\"text\" id=\"name\" name=\"name\" placeholder=\"Enter Full Name\" required\n");
      out.write("                                            value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                    </span>\n");
      out.write("                                    <span class=\"email\">\n");
      out.write("                                        <label for=\"email\">Email: </label>\n");
      out.write("                                        <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"Your Email Address\"\n");
      out.write("                                            value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" readonly>\n");
      out.write("                                    </span>\n");
      out.write("                                    <span class=\"password\">\n");
      out.write("                                        <label for=\"password\">Password: </label>\n");
      out.write("                                        <input type=\"text\" id=\"password\" name=\"password\" placeholder=\"Enter Password\"\n");
      out.write("                                            required value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.password}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                    </span>\n");
      out.write("                                    <span class=\"confirm-password\">\n");
      out.write("                                        <label for=\"confirm-password\">Confirm Password: </label>\n");
      out.write("                                        <input type=\"text\" name=\"confirm-password\" id=\"confirm-password\"\n");
      out.write("                                            placeholder=\"Re-Enter Password\" required value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.password}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                    </span>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                ");
 if(request.getAttribute("emailMsg") !=null){ 
      out.write("\n");
      out.write("                                    <p class=\"message\" style=\"color: red;margin-left: 70px;width: 300px;\">\n");
      out.write("                                        ");
      out.print( request.getAttribute("emailMsg"));
      out.write("\n");
      out.write("                                    </p>\n");
      out.write("                                    ");
} 
      out.write("\n");
      out.write("                                        ");
 if(request.getAttribute("passMsg") !=null){ 
      out.write("\n");
      out.write("                                            <p class=\"message\" style=\"color: red;margin-left: 70px;width: 300px;\">\n");
      out.write("                                                ");
      out.print( request.getAttribute("passMsg"));
      out.write("\n");
      out.write("                                            </p>\n");
      out.write("                                            ");
} 
      out.write("\n");
      out.write("                                                <br>\n");
      out.write("                                                <input type=\"submit\" value=\"Update\">\n");
      out.write("                                                <center><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/index.jsp\" class=\"return\">Home</a></center>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                    </section>\n");
      out.write("                    <script>\n");
      out.write("                        function onImageChange() {\n");
      out.write("                            var imageChooser = document.querySelector(\".imageChooser\");\n");
      out.write("                            var showImage = document.querySelector(\".showImage\");\n");
      out.write("                            showImage.src = URL.createObjectURL(imageChooser.files[0]);\n");
      out.write("                        }\n");
      out.write("                    </script>\n");
      out.write("                </body>\n");
      out.write("\n");
      out.write("                </html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
