<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class='container'>
<div class='row'>
	<div class='col-md-12' id="header-page">
			<h1><span><?php echo $faq['pertanyaan']; ?></span></h1>
	</div>

		<div class='col-md-8 left-side'>

			<div class="artikel">
				<div class="konten">
					
				<?php echo $faq['jawaban']; ?>

					
				</div>
			</div>

		</div>