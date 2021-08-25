<html>
	<!------------------------>
	<head>
<style>
	table {
		width: 80%;
	}
	table, th, td
	{
		border: 1px solid black;
		border-collapse: collapse;
		opacity: 0.85;
		width: 1150px;
		height: 30px;
		margin: 120px;
		padding: 60px;

	}
	th, td
	{
		padding: 10px;
		text-align: center;
	}
	th
	{
		background-color: #5B2C6F;
		color: white;
	}
	tr:nth-child(even)
	{
		background-color:#EBF5FB ;
	
	}
	tr:nth-child(odd)
	{
		background-color:#D6EAF8;
	}
	td{
		background-color: #;
	}
	</style>
</head> 
<body>
<table style="border=:1px solid black;margin-left:auto;margin-right:auto">
<tr>
<th>blogs</th>
</tr>
	<!------------------------->
	<body style="background:url(1.jpg);background-repeat:no-repeat;background-size:100% 100%">
		<p style="text-align:right;"> <a href="dashboard.php">Post Blog</a></p>
		<form method="post">
            <center><input type="text" name="category" placeholder="search blogs by category">
            <input type="submit" name="search" color="blue" value="search"></a></center>
		    </form>

<?php
	session_start();
	require 'connection.php';
	$query="select*from tiao";
	$result=mysqli_query($conn,$query);
	$count=mysqli_num_rows($result);
	if($count>0)
		{
			while($count=$result->fetch_assoc())
			{
				echo("<tr><td>".$count['blog']);
				echo nl2br("\n\n");
				echo("A blog by: ");
				echo($count['name']);
				echo nl2br("\n\n");
				echo($count['email']);
				echo nl2br("\n\n");
				echo("Currently working at: ");
				echo($count['working']);
				echo nl2br("\n\n");
				echo("Instagram: ");
				echo($count['instagram']);
				echo nl2br("\n\n");
				echo("Linkedin: ");
				echo($count['linkedin']."</td></tr>");
	}
}
	$category=filter_input(INPUT_POST,'category');
	if(!empty($_POST['search']))
		{	
			$_SESSION['category'] = $category;
			header('Location:results.php');
		}
?>
</table>
</body>
</html>