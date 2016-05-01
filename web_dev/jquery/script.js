  function circleUp() {
            $(this).animate({ top: "1px" }, "slow", "swing", circleDown);
        }

  function circleDown() {
            $(this).animate({ top: "400px" }, "slow", "swing", circleUp);
        }

  $(document).ready(function() {
    $(".circle").click(function(){
      $(this).animate({ top: "1px" }, "slow", "swing", circleDown);
  });
});
