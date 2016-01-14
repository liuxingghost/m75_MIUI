.class Lcom/android/internal/telephony/cat/bip/TcpChannel;
.super Lcom/android/internal/telephony/cat/bip/Channel;
.source "Channel.java"


# static fields
.field private static final TCP_CONN_TIMEOUT:I = 0x3a98


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p8, "bipManager"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    const/4 v0, 0x0

    .line 987
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/cat/bip/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 981
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 982
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 983
    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 988
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/bip/TcpChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/bip/TcpChannel;

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/bip/TcpChannel;->onOpenChannelCompleted()V

    return-void
.end method

.method private onOpenChannelCompleted()V
    .locals 5

    .prologue
    .line 1060
    const/4 v1, 0x0

    .line 1062
    .local v1, "ret":I
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1064
    :try_start_0
    const-string v2, "[BIP]"

    const-string v3, "[TCP]stream is open"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 1066
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 1067
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/bip/Channel$TcpReceiverThread;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cat/bip/Channel$TcpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/bip/Channel;Ljava/io/DataInputStream;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1068
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpChannel;->checkBufferSize()I

    move-result v1

    .line 1080
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    .line 1081
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    .line 1084
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBipManger:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v2, v1, p0}, Lcom/android/internal/telephony/cat/bip/BipManager;->openChannelCompleted(ILcom/android/internal/telephony/cat/bip/Channel;)V

    .line 1086
    return-void

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "[BIP]"

    const-string v3, "[TCP]Fail to create data stream"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const/4 v1, 0x5

    .line 1072
    goto :goto_0

    .line 1075
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "[BIP]"

    const-string v3, "[TCP]socket is not open"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/4 v1, 0x5

    .line 1077
    goto :goto_0
.end method


# virtual methods
.method public closeChannel()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1088
    const/4 v0, 0x0

    .line 1090
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[TCP]closeChannel."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->rt:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpChannel;->requestStop()V

    .line 1095
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1098
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 1100
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_2

    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1102
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_3

    .line 1103
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :cond_3
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1107
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    .line 1108
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    .line 1109
    :goto_0
    iput v4, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I

    .line 1112
    return v0

    .line 1106
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1107
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    .line 1108
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    .line 1109
    iput v4, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I

    .line 1106
    throw v1

    .line 1104
    :catch_0
    move-exception v1

    .line 1106
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1107
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    .line 1108
    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    goto :goto_0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 1230
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 1231
    .local v0, "txRemaining":I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TCP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 993
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 995
    .local v1, "t_openChannelThread":Ljava/lang/Thread;
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mLinkMode:I

    if-nez v2, :cond_1

    .line 996
    new-instance v1, Ljava/lang/Thread;

    .end local v1    # "t_openChannelThread":Ljava/lang/Thread;
    new-instance v2, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/bip/TcpChannel$1;-><init>(Lcom/android/internal/telephony/cat/bip/TcpChannel;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1028
    .restart local v1    # "t_openChannelThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1029
    const/16 v0, 0xa

    .line 1056
    :cond_0
    :goto_0
    return v0

    .line 1030
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mLinkMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1031
    new-instance v1, Ljava/lang/Thread;

    .end local v1    # "t_openChannelThread":Ljava/lang/Thread;
    new-instance v2, Lcom/android/internal/telephony/cat/bip/TcpChannel$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/bip/TcpChannel$2;-><init>(Lcom/android/internal/telephony/cat/bip/TcpChannel;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1044
    .restart local v1    # "t_openChannelThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1045
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I

    .line 1047
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpChannel;->checkBufferSize()I

    move-result v0

    .line 1048
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1049
    const-string v2, "[BIP]"

    const-string v3, "[TCP]openChannel: buffer size is modified"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBufferSize:I

    iput v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 1052
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    .line 1053
    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    goto :goto_0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I
    .locals 9
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .prologue
    const/4 v2, 0x5

    .line 1239
    const/4 v1, 0x0

    .line 1241
    .local v1, "ret":I
    const-string v3, "[BIP]"

    const-string v4, "[TCP]new receiveData method"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    if-nez p2, :cond_0

    .line 1243
    const-string v3, "[BIP]"

    const-string v4, "[TCP]rdr is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    :goto_0
    return v2

    .line 1247
    :cond_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TCP]receiveData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    new-array v3, p1, [B

    iput-object v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 1250
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    if-lt v3, p1, :cond_3

    .line 1251
    const-string v3, "[BIP]"

    const-string v4, "[TCP]rx buffer has enough data"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    .line 1257
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    .line 1258
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 1259
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    .line 1260
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I

    .line 1261
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBufferSize:I

    if-ge v3, v5, :cond_2

    .line 1262
    const-string v3, "[BIP]"

    const-string v5, ">= [TCP]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1265
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    const-string v2, "[BIP]"

    const-string v3, "[TCP]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 1296
    goto :goto_0

    .line 1265
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[TCP]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1272
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v3, "[BIP]"

    const-string v4, "[TCP]rx buffer is insufficient - being"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1276
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1277
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    .line 1278
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    .line 1280
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mBufferSize:I

    if-ge v3, v5, :cond_4

    .line 1281
    const-string v3, "[BIP]"

    const-string v5, "< [TCP]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1284
    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1285
    const/4 v3, 0x0

    :try_start_6
    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1286
    const/16 v1, 0x9

    .line 1293
    const-string v2, "[BIP]"

    const-string v3, "[TCP]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1284
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1288
    :catch_1
    move-exception v0

    .line 1290
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[TCP]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    .locals 10
    .param p1, "requestCount"    # I

    .prologue
    .line 1117
    new-instance v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 1119
    .local v5, "ret":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    new-array v6, p1, [B

    iput-object v6, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 1120
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]receiveData "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    if-lt v6, p1, :cond_1

    .line 1124
    :try_start_0
    const-string v6, "[BIP]"

    const-string v7, "[TCP]Start to copy data from buffer"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1127
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    .line 1128
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    .line 1129
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1173
    :cond_0
    :goto_0
    return-object v5

    .line 1133
    :cond_1
    move v4, p1

    .line 1134
    .local v4, "needCopy":I
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    .line 1135
    .local v0, "canCopy":I
    const/4 v3, 0x0

    .line 1136
    .local v3, "countCopied":I
    const/4 v1, 0x0

    .line 1138
    .local v1, "canExitLoop":Z
    :goto_1
    if-nez v1, :cond_0

    .line 1139
    if-le v4, v0, :cond_2

    .line 1141
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    .line 1144
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1145
    add-int/2addr v3, v0

    .line 1146
    sub-int/2addr v4, v0

    .line 1160
    :goto_2
    if-nez v4, :cond_3

    .line 1161
    const/4 v1, 0x1

    goto :goto_1

    .line 1151
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1153
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1154
    add-int/2addr v3, v4

    .line 1155
    const/4 v4, 0x0

    goto :goto_2

    .line 1164
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 1165
    .local v2, "count":I
    iput v2, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferCount:I

    .line 1166
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1167
    .end local v2    # "count":I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1156
    :catch_1
    move-exception v6

    goto :goto_2

    .line 1147
    :catch_2
    move-exception v6

    goto :goto_2

    .line 1130
    .end local v0    # "canCopy":I
    .end local v1    # "canExitLoop":Z
    .end local v3    # "countCopied":I
    .end local v4    # "needCopy":I
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x5

    .line 1177
    const/4 v2, 0x0

    .line 1179
    .local v2, "ret":I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    sub-int v4, v6, v7

    .line 1180
    .local v4, "txRemaining":I
    const/4 v3, 0x0

    .line 1182
    .local v3, "tmpBuffer":[B
    if-nez p1, :cond_0

    .line 1183
    const-string v6, "[BIP]"

    const-string v7, "[TCP]sendData - data null:"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    :goto_0
    return v5

    .line 1188
    :cond_0
    :try_start_0
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]sendData: size of data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]sendData: size of buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    if-nez v6, :cond_2

    if-ne v10, p2, :cond_2

    .line 1192
    move-object v3, p1

    .line 1193
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    .line 1207
    :goto_1
    if-ne p2, v10, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 1209
    :try_start_1
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]SEND_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v6, v3, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1211
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1212
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    move v5, v2

    .line 1225
    goto/16 :goto_0

    .line 1196
    :cond_2
    :try_start_2
    array-length v6, p1

    if-lt v4, v6, :cond_3

    .line 1197
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    array-length v9, p1

    invoke-static {p1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1198
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I

    array-length v7, p1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1205
    :goto_3
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpChannel;->mTxBuffer:[B
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1200
    :cond_3
    :try_start_4
    const-string v6, "[BIP]"

    const-string v7, "[TCP]sendData - tx buffer is not enough"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 1213
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "[BIP]"

    const-string v7, "[TCP]sendData - Exception"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1219
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1220
    .local v1, "ne":Ljava/lang/NullPointerException;
    const-string v5, "[BIP]"

    const-string v6, "[UDP]sendData NE"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1222
    const/4 v2, 0x5

    goto :goto_2
.end method
