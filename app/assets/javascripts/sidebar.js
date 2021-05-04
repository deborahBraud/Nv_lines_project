$('#phenotypes_id').change(function(){

  let phenotype = $(this).val();
  console.log(phenotype);

  $.ajax({
    url: "/home/",
    data: {
    	phenotype_id : phenotype
    	 }
  }).done(function(e) {
    console.log(e);
  });

});