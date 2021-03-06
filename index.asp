<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
	</head>
	<body>
		
		<p>ASP can output plain text:</p>
		
		
		<h1>Plain Examples</h1>
		<div>
			<%
				response.write("Hello World!")
				response.write "<h2>Hello World! in tag</h2>"
				
				response.write "<p style='color:#0000ff'>This text is styled.</p>"
			%>
		</div>
		
		<h1>VbScript</h1>
		<div>
			<%
				dim name
				name = "Donald Duck"
				response.write "My name is: " & name
				
				response.write "<br/>"
				Dim famname(5),i
				famname(0) = "Jan Egil"
				famname(1) = "Tove"
				famname(2) = "Hege"
				famname(3) = "Stale"
				famname(4) = "Kai Jim"
				famname(5) = "Borge"
				
				For i = 0 to 5
				response.write(famname(i) & "<br>")
				Next
			%>
		</div>
		<h1> Function and Subroutine</h1>
		<div>
			<%
				Function myFunction()
				myFunction = Date()
				End Function
				
				response.write myFunction()
				
				Sub callWrite(text)
				response.write(text)
				End Sub
				
				call callWrite("Hello sub.")
			%>
		</div>
		
		<h1>Condition</h1>
		<div>
			<h2>If..Then</h2>
			<% If true Then Response.write "<p>If true Then Write</p>"%>
			<h2>If ... then... else...</h2>
			<% If false Then
				
				Else 
				Response.write "<p>If false Then Else Write End If</p>"
				End If
			%>
		</div>
		
		<h1>Case </h1>
		
		<div>
			<%
				Select Case 8
				Case 1
				response.write "1"
				Case 8 
				response.write "Select Case 8"
			End Select%>
		</div>
		
		<h1>
		Include</h1>
		<div>
			<h2>Include static file</h2>
			<p>&lt;!-- #include file="js.txt.inc"--&gt; </p>
			<p><!-- #include file="js.txt.inc"--> </p>
			
			<h2>Include js file</h2>
			<script language="javascript" runat="server" src="js.js.inc"></script>
			<% incObj.sayBye%>
		</div>
		
		<h1>
			Looping
		</h1>
		<div>
		<h2>For...Next</h2>
		<% For i = 0 To 5
			response.write (" For i = 0 To 5...Next i=" & i &"<br>")
		Next%>
		<h2>For ... Next step keyword</h2>
		<% For i = 0 To 4 Step 2
			response.write("For i=0 To 4 Step 2...Next  i=" & i &",")
		Next%>
		
		<h2>For Each ... Next</h2>
		<h2>Do...Loop</h2>
		<h2>While...Wend</h2>
		</div>
	</body>
</html>
