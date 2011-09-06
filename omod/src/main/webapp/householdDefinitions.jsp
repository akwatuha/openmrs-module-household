<%@ include file="/WEB-INF/template/include.jsp"%>

<openmrs:require privilege="Manage Household" otherwise="/login.htm"
	redirect="/module/household/householdDefinitions.form" />

<%@ include file="/WEB-INF/template/header.jsp"%>
<h3><spring:message code="household.title"/></h3>

<%@ include file="localHeader.jsp"%>

<link href="${pageContext.request.contextPath}/moduleResources/household/css/tablestyles.css" type="text/css" rel="stylesheet" />

<b class="boxHeader"><spring:message code="household.definitions.header"/></b>
<div class="box">

	<table>
		<tr>
			<td>
				<form method="POST" name="householdDefinitions">
				<table>
					<c:choose>
						<c:when test ="${not empty householdEdit}">
							<input type="hidden" name="houseid" value="${householdEdit.id}" />
							<tr>
								<td><spring:message code="household.definitions.code"/></td>
								<td><input type="text" name="householdDefinitionsCode" value="${householdEdit.householdDefinitionsCode}" /></td>
							</tr>
							<tr>
								<td><spring:message code="household.definitions.codeinfull"/></td>
								<td><input type="text" name="householdDefinitionsCodeinfull" value="${householdEdit.householdDefinitionsCodeinfull}" /></td>
							</tr>
							<tr>
								<td><spring:message code="household.definitions.description"/></td>
								<td>
									<textarea name="householdDefinitionsDescription">${householdEdit.householdDefinitionsDescription}</textarea>
								</td>
							</tr>
							<tr>
								<td></td><td><input type="submit" value="Save Changes" /></td>
							</tr>
							
						</c:when>
						<c:otherwise>
							<tr>
								<td><spring:message code="household.definitions.code"/></td>
								<td><input type="text" name="householdDefinitionsCode" value="${householdDefinitionsCode}" /></td>
							</tr>
							<tr>
								<td><spring:message code="household.definitions.codeinfull"/></td>
								<td><input type="text" name="householdDefinitionsCodeinfull" value="${householdDefinitionsCodeinfull}" /></td>
							</tr>
							<tr>
								<td><spring:message code="household.definitions.description"/></td>
								<td>
									<textarea name="householdDefinitionsDescription">${householdDefinitionsDescription}</textarea>
								</td>
							</tr>
							<tr>
								<td></td><td><input type="submit" value="Add New" /></td>
							</tr>
						</c:otherwise>
					</c:choose>
					
					
				</table>
				</form>
			</td>
			<td width="1" bgcolor="#C0C0C0"><BR></td>
			<td valign="top">
				<table cellpadding="5" width="100%" id="mytable">
					<tr>
						<th class="tbClass">Household Id</th>
						<th class="tbClass">Household Code</th>
						<th class="tbClass">Household Code In Full</th>
						<th class="tbClass">Household Description</th>
						<th class="tbClass">Action</th>
					</tr>
					<c:forEach var="household" items="${householdsTypes}">
						<form method="POST" name="${household.id}">
						<tr>
							<td class="tdClass">${household.id}</td>
							<td class="tdClass">${household.householdDefinitionsCode}</td>
							<td class="tdClass">${household.householdDefinitionsCodeinfull}</td>
							<td class="tdClass">${household.householdDefinitionsDescription}</td>
							<td class="tdClass">
								<input type="hidden" name="houseid" id="${household.id}" value="${household.id}" />
								<input type="submit" value="Edit" />
							</td>
						</tr>
						</form>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
		

</div>
<%@ include file="/WEB-INF/template/footer.jsp"%>