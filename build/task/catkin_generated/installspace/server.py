import socket
import threading

#接收数据
def recive(sock):
    while True:
        try:
            data = sock.recv(1024)
            #hex_string = hex(data)[2:]
            #print("Recive:{}".format(data.hex()))

            T_trans=threading.Thread(target=broadcast_data,args=(sock, data,))
            T_trans.start()

            # sock.send(data)
            # sock.send("From Server:{}".format(data).encode("utf-8"))
        except:
            #print(str(addr) + "---offLine！")
            CONNECTION_LIST.remove(sock)
            exit()

def handle_sock(sock, addr):

    #开线程接收客户端数据
    T_recive=threading.Thread(target=recive,args=(sock,))
    T_recive.start()

 #广播消息，若不在线删除
def broadcast_data(sock, message):
    for socket in CONNECTION_LIST:
        if  socket != sock:
            try:
                socket.send(message)
            except:
                socket.close()
                CONNECTION_LIST.remove(socket)


server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(('', 2334))
server.listen()
CONNECTION_LIST = []

#主线程循环接收客户端连接
while True:
    sock, addr = server.accept()
    CONNECTION_LIST.append(sock)
    print('Connect--{}'.format(addr))

    #连接成功后开一个线程用于处理客户端
    client_thread = threading.Thread(target=handle_sock, args=(sock, addr))
    client_thread.start()
