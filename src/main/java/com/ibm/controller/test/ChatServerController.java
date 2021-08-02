package com.ibm.controller.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Component;

import net.sf.json.JSONObject;

@ServerEndpoint("/websocket")
public class ChatServerController {
	 private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm");  // 日期格式化
	 @OnOpen
	 public void open(Session session) {
	  // 添加初始化操作
	 }
	 /**
	  * 接受客户端的消息，并把消息发送给所有连接的会话
	  * @param message 客户端发来的消息
	  * @param session 客户端的会话
	  */
	 @OnMessage
	 public void getMessage(String message, Session session) {
	  // 把客户端的消息解析为JSON对象
	System.out.println("websocket来自客户端的消息:{}"+ message);
		 
	  JSONObject jsonObject = JSONObject.fromObject(message);
	  // 在消息中添加发送日期
	  jsonObject.put("date", DATE_FORMAT.format(new Date()));
	  // 把消息发送给所有连接的会话
	  for (Session openSession : session.getOpenSessions()) {
	   // 添加本条消息是否为当前会话本身发的标志
	   jsonObject.put("isSelf", openSession.equals(session));
	   // 发送JSON格式的消息
	   openSession.getAsyncRemote().sendText(jsonObject.toString());
	  }
	 }
	 @OnClose
	 public void close() {
	  // 添加关闭会话时的操作
	 }
	 @OnError
	 public void error(Throwable t) {
		 System.out.println("错误: " + t.toString());
	 }
}
