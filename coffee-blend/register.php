<?php include "header/nav.php" ?>

<?php
  include("config/config.php");
?>

<?php

if(isset($_SESSION['userName']))
{
	header('location:index.php');
}
else
{

	if(isset($_POST['submit']))
	{

		$user_name = $_POST['username'];
		$email = $_POST['email'];
		$password = $_POST['password'];

		$hash_password = password_hash($password,PASSWORD_BCRYPT);

		// echo "$user_name <br>";
		// echo "$email <br>";
		// echo "$password <br>";

		$user_register_query = "INSERT INTO `register_user`(`user_name`, `user_email`, `user_password`) VALUES (:username, :email, :password)";

		$user_register_prepare = $connection->prepare($user_register_query);

		$user_register_prepare->bindParam(':username',$user_name);
		$user_register_prepare->bindParam(':email',$email);
		$user_register_prepare->bindParam(':password',$hash_password);

		$user_register_prepare->execute();


	}

}
?>



    <section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(images/bg_2.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">Register</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.php">Home</a></span> <span>Register</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 ftco-animate">
			<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post" class="billing-form ftco-bg-dark p-3 p-md-5">
				<h3 class="mb-4 billing-heading">Register</h3>
	          	<div class="row align-items-end">
                 <div class="col-md-12">
                        <div class="form-group">
                            <label for="Username">Username</label>
                          <input type="text" class="form-control" name="username" placeholder="Username">
                        </div>
                 </div>
	          	  <div class="col-md-12">
	                <div class="form-group">
	                	<label for="Email">Email</label>
	                  <input type="text" class="form-control" name="email" placeholder="Email">
	                </div>
	              </div>
                 
	              <div class="col-md-12">
	                <div class="form-group">
	                	<label for="Password">Password</label>
	                    <input type="password" class="form-control" name="password" placeholder="Password">
	                </div>

                </div>
                <div class="col-md-12">
                	<div class="form-group mt-4">
							<div class="radio">
                                <button class="btn btn-primary py-3 px-4" type="submit" name="submit">Register</button>
						    </div>
					</div>
                </div>

               
	          </form><!-- END -->
          </div> <!-- .col-md-8 -->
          </div>
        </div>
      </div>
    </section> <!-- .section -->

    <?php include "header/footer.php" ?>

  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>

    
  </body>
</html>