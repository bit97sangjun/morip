<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>RESULT PAGE</h1>

<script>
	
	var uploadName = '${uploadName}';
	var isImage = '${isImage}';
	
	// parent window의 showAttach 호출하기 (안쪽에서 바깥쪽 호출하기)
	parent.showAttach({uploadName: uploadName, isImage: isImage});
	
</script>