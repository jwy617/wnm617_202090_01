

const checkAnimalAddForm = () => {
   let name = $("#animal-add-name").val();
   let breed = $("#animal-add-breed").val();
   let description = $("#animal-add-description").val();

   query({
      type:'insert_animal',
      params:[sessionStorage.userId,name,breed,description]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }

      $("#animal-add-form")[0].reset();


      console.log(d);
      sessionStorage.animalId = d.id;
      $.mobile.navigate($("#animal-add-destination").val());
   })
}