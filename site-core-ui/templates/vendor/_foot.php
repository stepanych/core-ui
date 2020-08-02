<?php namespace ProcessWire; ?>

	</div> <!-- main end -->

	<footer id="footer">
		<?php
			render("layout/footer.php");
		?>
	</footer>

</div> <!-- wrapper end -->

<?php
// Scripts in Footer
echo $settings->scripts_in_footer;

// Dynamic js/css files
foreach ($config->styles->unique() as $file) {
  echo "<link rel='stylesheet' type='text/css' href='$file' />";
}
foreach ($config->scripts->unique() as $file) {
  echo "<script type='text/javascript' src='$file'></script>";
}
?>
</body>
</html>
