<%@ page import="java.util.ArrayList" %>
<%@page import="pojo.User" %>
<%@ page import="model.Accountmanager" %>
<div class="col-md-3 col-xs-6 sidebar">
						<p class="title">Top người thi</p>
						<ul>
							<%
								Accountmanager mn = new Accountmanager();
								ArrayList<User> lstDanhSach;
								lstDanhSach = new ArrayList<User>();
								for(int j = 0; j < 5; j ++)
								{
									User u = new User();
									u.setHoTen("Nguyen Tan Hau " + j);
									lstDanhSach.add(u);
								}
								for(int i = 0; i < 10; i++)
								{
									if(i < lstDanhSach.size())
									{
										User nv = lstDanhSach.get(i);
										%>	
										<li>
											<% out.println(nv.getHoTen()); %>
										</li>
									<%
									}															
								}
							%>		
																			
						</ul>
</div>