<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
	.jumbotron, .navbar, footer {
		display: none;
	}
</style>

<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/sockjs.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/stomp.min.js"></script>
	
<%-- <script type="text/javascript" src="${myctx}/js/chat.js"></script> --%>

<script type="text/javascript">
	
	var stompClient = null;
    
    function setConnected(connected) {
        document.getElementById('connect').disabled = connected;
        document.getElementById('disconnect').disabled = !connected;
        document.getElementById('conversationDiv').style.visibility 
          = connected ? 'visible' : 'hidden';
        document.getElementById('response').innerHTML = '';
    }
    
    function connect() {
        var socket = new SockJS('${pageContext.request.contextPath}/chat');
        stompClient = Stomp.over(socket);  
        stompClient.connect({}, function(frame) {
        	console.log("frame==="+frame)
            setConnected(true);
            console.log('Connected: ' + frame);
            stompClient.subscribe('/topic/messages', function(messageOutput) {
                showMessageOutput(JSON.parse(messageOutput.body));
            });
        });
    }
    
    function disconnect() {
        if(stompClient != null) {
            stompClient.disconnect();
        }
        setConnected(false);
        console.log("Disconnected");
    }
    
    function send(){
    	//console.log(event.keyCode)
    	if(event.keyCode==13){
    		sendMessage();
    	}
    	
    }
    
  //https://tecoble.techcourse.co.kr/post/2021-09-05-web-socket-practice/ ==>참고하여 방만들기도 적용해보기
    function sendMessage() {
        var from = document.getElementById('from').value;
        var text = document.getElementById('text').value;
        stompClient.send("/app/chat", {}, //prefix를 /app으로 지정합=>WebSocketConfigure에서 
          JSON.stringify({'from':from, 'text':text}));
        $('#text').val('')
    }
    
    function showMessageOutput(messageOutput) {
        var response = document.getElementById('response');
        var p = document.createElement('p');
        p.style.wordWrap = 'break-word';
        p.appendChild(document.createTextNode(messageOutput.from + ": " 
          + messageOutput.text + " (" + messageOutput.time + ")"));
        response.appendChild(p);
    }	
</script>

<style>
	#chatBox {
		width: 95%;
		height: 410px;
		margin: 0 auto;
		box-shadow: 0 0 10px #8EDBA3 /* rgba(0, 0, 0, 0.1) */;
		border-radius: 5px;
		padding: 20px;
	}
	
	#from {
		margin-bottom: 10px;
	}
	
	#text {
		width: 80%;
		padding: 4px;
	}
	
	#sendMessage {
		padding: 6px 10px;
		margin-bottom: 4px;
	}
	
	#convBox {
		width: 100%;
		height: 170px;
		margin: 20px auto;
		border: 1px solid black;
		overflow: auto;
	}
</style>


<body onload="disconnect()">

	<div id="chatBox" class="text-center">
		<h3 style="font-family: 'omyu_pretty';">{ } 시터님과 채팅</h3>
		<div>
			<input type="text" id="from" class="form-control" placeholder="Choose a nickname" />
		</div>
		<div>
			<button id="connect" class="btn btn-outline-info" onclick="connect();">시작하기</button>
			<button id="disconnect" class="btn btn-outline-warning" disabled="disabled" onclick="disconnect();">
				끝내기</button>
		</div>

		<div id="conversationDiv">
			<div id="convBox">
				<p id="response"></p>
			</div>
		
			<input type="text" id="text" placeholder="Write a message..."
				onkeydown="send()" />
			<button id="sendMessage" class="btn btn-outline-primary" onclick="sendMessage();">전송</button>
			
		</div>

	</div>

</body>