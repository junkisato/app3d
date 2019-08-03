$(function() {
  search_list = $("#patients-list");

  function appendProduct(patient) {
  var html = `<a href="/pains/new" data-turbolinks="false" class="list-group-item list-group-item-action">${patient.name} 様</a>`
  search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    var html = `<div class="list-group-item list-group-item-action">${ msg }</div>`
    search_list.append(html);
  }
  $(".list-group").on("click",".search-btm", function(e) {
    var input = $(this).text();

  $("#patients-list").children().remove();
    e.preventDefault();

  $.ajax({
  type: 'GET',
  url: '/patients',
  data: {keyword:input},
  dataType: 'json'
  })

  .done(function(patients) {
    if (patients.length !== 0 && input.length !== null) {
      patients.forEach(function(patient){
      appendProduct(patient);
      });
    }
      else {
        appendErrMsgToHTML("一致するユーザーが見つかりません");
      }
    })
      .fail(function() {
        alert('ユーザー検索に失敗しました');
      })
  });
});