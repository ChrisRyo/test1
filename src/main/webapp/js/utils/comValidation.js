/**
 * chrisryo
 */
var comValidation = function() {
  return {

    /*
     * 自動將validation欄位綁定
     * 
     * @param condition Object 
     * @param form name
     */
    validationInit: function(condition, form) {

      for (var i = 0; i < condition.length; i++) {

        var cond = condition[i];

        $("#" + form + " [id=" + cond.name + "]").attr("class", cond.rule);

      }

      $("#" + form).validationEngine('attach', {

      }).css({
        border: "2px solid #000"
      });
      
      $("#" + form).validationEngine();
    },
  }
}();