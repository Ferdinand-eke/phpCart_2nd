<?php
session_start();
if($_SESSION["admin"]=="")
{
    ?>
    <script type="text/javascript">
        window.location="index.php";
    </script>
<?php
}
?>

<?php include"header.php" ?>
<?php include"menu.php" ?>

<?php
$link = mysqli_connect("localhost","root", "ferazi");
mysqli_select_db($link, "shopping_cart_am");
?>



<div class="grid_10">
    <div class="box round first">
        <h2>
            Add Product </h2>
        <div class="block">
            Testing

            <form name="form1" action="" method="post" enctype="multipart/form-data">
                <table class="table table-striped">
                    <tr>
                        <td><label for="ProductName">Product Name</label></td>
                        <td><input type="text" name="pname" class="form-control"   placeholder="Enter Product Name" required=""></td>
                    </tr>

                    <tr>
                        <td>Product Price</td>
                        <td><input type="text" name="pprice" required></td>

                    </tr>
                    <tr>
                        <td>Product Quantity</td>
                        <td><input type="text" name="pqty" required></td>
                    </tr>
                    <tr>
                        <td>Product Image</td>
                        <td><input type="file" name="pimage" required></td>
                    </tr>
                    <tr>
                        <td>Product Category</td>
                        <td>
                        <select name="pcategory" required>
                            <option value="Gents_Clothes">Gents_Clothes</option>
                            <option value="Ladies_Clothes">Ladies_Clothes</option>
                            <option value="Gents_Shoes">Gents_Shoes</option>
                            <option value="Ladies_Shoes">Ladies_Shoes</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Product Description</td>
                       <td><textarea  cols="15" rows="10" name="pdesc" required></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" name="submit1" value="Upload"></td>
                    </tr>
                </table>

            </form>

            <?php
            if(isset($_POST["submit1"]))
            {
                $v1 = rand(1111,9999);
                $v2 =rand(1111,9999);

                $v3 = $v1.$v2;
                $v3 =md5($v3);

                $fnm=$_FILES["pimage"]["name"];
                $dist="./product_image/".$v3.$fnm;
                $dist1="product_image/".$v3.$fnm;
                move_uploaded_file($_FILES["pimage"]["tmp_name"],$dist);

                mysqli_query($link, "insert into product VALUES ('', '$_POST[pname]', '$_POST[pprice]','$_POST[pqty]','$dist1','$_POST[pcategory]','$_POST[pdesc]') ");
            }
            ?>

        </div>
    </div>
</div>


<?php include"footer.php" ?>
</body>
</html>
