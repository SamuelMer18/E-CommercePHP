<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>Más vistos hoy</b></h3>
	  	</div>
	  	<div class="box-body">
	  		<ul id="trending">
	  		<?php
	  			$now = date('Y-m-d');
	  			$conn = $pdo->open();

	  			$stmt = $conn->prepare("SELECT * FROM products WHERE date_view=:now ORDER BY counter DESC LIMIT 10");
	  			$stmt->execute(['now'=>$now]);
	  			foreach($stmt as $row){
	  				echo "<li><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></li>";
	  			}

	  			$pdo->close();
	  		?>
	    	<ul>
	  	</div>
	</div>
</div>



<div class="row">
	<div class='box box-solid'>
	  	<div class='box-header with-border'>
	    	<h3 class='box-title'><b>Síguenos en las redes sociales</b></h3>
	  	</div>
	  	<div class='box-body'>
	    	<a class="btn btn-social-icon btn-facebook"  href="https://www.facebook.com/universidadprivadadomingosaviotarija"><i class="fa fa-facebook"></i></a>
	    	<a class="btn btn-social-icon btn-instagram"href="https://www.instagram.com/upds_santacruz/"><i class="fa fa-instagram"></i></a>
			<a class="btn btn-social-icon btn-whatsapp"href="https://api.whatsapp.com/send/?phone=59172129166&text&type=phone_number&app_absent=0"><i class="fa fa-whatsapp"></i></a>
	    	
	  	</div>
	</div>
</div>
