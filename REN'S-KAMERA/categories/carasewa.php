<?php include 'support.php' ?>

<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/body.css">
<link rel="stylesheet" href="css/footer.css">
 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>REN'S KAMERA</title>




<head>
<section class="nabar">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
        <a class="navbar-brand" href="#">REN'S KAMERA</a>
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                        
                    </li>
                    <li class="nav-item dropdown"> 
                        <a class="nav-link " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Categories
                        </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="./categories/kamera.php"> Kamera</a>
                        <a class="dropdown-item" href="./categories/lensa.php">Lensa</a>
                        <a class="dropdown-item" href="./categories/drone.php">Drone</a>
                    </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="carasewa.php">Cara Sewa</a>
                    </li>
                </ul>
                
                <!--  -->
                <a class="nav-link my-2 my-lg-0 ml-5" href="login.php">Sign in for Admin</a>
                <form class="form-inline my-2 my-lg-0" method="GET" action="pencarian.php">
                    <input class="form-control mr-sm-2" type="text" name="search" placeholder="Search" aria-label="Search" onkeyup="this.value = this.value.toLowerCase();"> 
            <!--      <button class="btn btn-outline-success my-2 my-sm-0" name="search" type="submit">Search</button>-->
                
                </form>
              
            </div>
        </nav>
    </div>
</head>

</div>
<div class="text-center">

	 <h3><img src="img/gif3.giff" alt="img" style="width : 200px;margin-left: 30px;" ></h3> 

<div class="col-12 text-justify">
	<div class="col">
<?php
	$carasewa = "1.  setiap penyewa  atau calon penyewa dianggap paham dan mampu mengoperasikan setiap barang yang akan disewa";
	$carasewa2 = "2.  calon penyewa melakukan pengecekan barang dan harga yang akan di sewa pada halaman Pricelist.";
	$carasewa3 = "3.  untuk ketersediaan barang yang akan di sewa silahkan menghubungi melalui WA tertera website ini.";
	$carasewa4 = "4.  Apabila barang yang diinginkan tersedia, untuk calon penyewa yang pertama kali akan di lakukan verifikasi data     dan harus mengirimkan data melalui WA/Gmail (KTP, KARTU PELAJAR/MAHASISWA, SIM)  :";
	$carasewa5 = "5.  Pengambilan alat di lakukan oleh penyewa sendiri (tidak diwakilkan) dengan membawa 3 identitas diri asli dan menyerahkan kepada Rent's kamera sebagai jaminan sewa.";
	$carasewa6 = "6.  Pembayaran dilakukan pada saat pengambilan barang. Pembayaran dilakukan dengan cara tunai atau transfer bank.";
	$carasewa7 = "7. Penyewaan barang terhitung 1×24 jam dan 1×12 jam pada saat jam pengambilan (kecuali hari juma’at s.d minggu adalah durasi sewa harian, tidak bisa melewati hari selanjutnya). ";
	$carasewa8 = "8. Penyewa dilarang meminjamkan barang ke teman atau orang lain.";
	$carasewa9 = "9. Penyewa tidak berhak menyewakan barang yang telah disewa kepada pihak ke tiga. Apabila itu terjadi, penyewa bertanggung jawab penuh atas barang yang disewa.";
	echo "<h6>$carasewa</h6>";
	echo "<h6>$carasewa2</h6>";
	echo "<h6>$carasewa3</h6>";
	echo "<h6>$carasewa4</h6>";
	echo "<h6>$carasewa5</h6>";
	echo "<h6>$carasewa6</h6>";
	echo "<h6>$carasewa7</h6>";
	echo "<h6>$carasewa8</h6>";
	echo "<h6>$carasewa9</h6>";	
	?>
</div>

          </div>
        </div>
      </div>
  
        </div>
      </section>
    </section>">
    

</body>