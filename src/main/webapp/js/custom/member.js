$( document ).ready(function() {
    initMemberGrid();
});

function initMemberGrid(){
	$("#memberGrid").jqGrid({
	      datatype: "local",
	      height: 250,
	      colNames:['帳號','密碼', 'E-MAIL', '電話'],
	      colModel:[
	        {name:'name',index:'name', width:90, align:'center'},
	        {name:'pwd',index:'invdate', width:90, align:'center', edittype:"password"},
	        {name:'email',index:'email', width:150, align:'center'},
	        {name:'phone',index:'phone', width:100, align:'center'}
	      ],
	      caption: "Member data grid"
	});  // jqGrid
}

function findAll(){
    $.ajax({
        type: 'GET',
        url: "/song/member/queryAll",
        dataType: "json", // data type of response
        
        success: function(memberList){
        	$("#memberGrid").jqGrid("clearGridData", true).trigger("reloadGrid");
        	for(var i in memberList){
        		$("#memberGrid").jqGrid('addRowData',i+1,memberList[i]); 
        	}
        },

         error:function(xhr, ajaxOptions, thrownError){ 
            alert(xhr.status); 
            alert(thrownError); 
         }
    });
}

function addUser(){
	$.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: "/song/member/add",
        dataType: "json",
        data: formToJSON(),
        success: function(memberList){
            alert('add ok!');
            $('#memberGrid').jqGrid('clearGridData');
        	for(var i in memberList){
        		$("#memberGrid").jqGrid('addRowData',i+1,memberList[i]); 
        	}
        },
        error: function(jqXHR, textStatus, errorThrown){
            alert('addMember error: ' + textStatus);
        }
    });
}

function updateUser(){
	$.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: "/song/member/update",
        dataType: "json",
        data: formToJSON(),
        success: function(memberList){
            alert('update ok!');
            $('#memberGrid').jqGrid('clearGridData');
        	for(var i in memberList){
        		$("#memberGrid").jqGrid('addRowData',i+1,memberList[i]); 
        	}
        },
        error: function(jqXHR, textStatus, errorThrown){
            alert('updateMember error: ' + textStatus);
        }
    });
}

function removeUser(){
	$.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: "/song/member/remove",
        dataType: "json",
        data: formToJSON(),
        success: function(memberList){
            alert('detele ok!');
            $('#memberGrid').jqGrid('clearGridData');
        	for(var i in memberList){
        		$("#memberGrid").jqGrid('addRowData',i+1,memberList[i]); 
        	}
        },
        error: function(jqXHR, textStatus, errorThrown){
            alert('deteleMember error: ' + textStatus);
        }
    });
}

function formToJSON() {
	return JSON.stringify({
        "name": $('#name').val(),
        "pwd": $('#pwd').val(),
        "email": $('#email').val(),
        "phone": $('#phone').val()
        });
}