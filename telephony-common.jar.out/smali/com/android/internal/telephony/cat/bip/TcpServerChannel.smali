.class Lcom/android/internal/telephony/cat/bip/TcpServerChannel;
.super Lcom/android/internal/telephony/cat/bip/Channel;
.source "Channel.java"


# instance fields
.field private mCloseBackToTcpListen:Z

.field protected mInput:Ljava/io/DataInputStream;

.field protected mOutput:Ljava/io/BufferedOutputStream;

.field protected mSSocket:Ljava/net/ServerSocket;

.field protected mSocket:Ljava/net/Socket;

.field private rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 9
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "port"    # I
    .param p5, "bufferSize"    # I
    .param p6, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p7, "bipManager"    # Lcom/android/internal/telephony/cat/bip/BipManager;

    .prologue
    .line 667
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/bip/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/bip/BipManager;)V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 668
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 706
    const/4 v1, 0x0

    .line 708
    .local v1, "ret":I
    const-string v2, "[BIP]"

    const-string v3, "[UICC]closeChannel."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    if-ne v2, v3, :cond_4

    .line 710
    const/16 v2, -0x80

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    if-ne v2, v3, :cond_3

    .line 712
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 713
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 717
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_2

    .line 718
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 719
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 724
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 725
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    .line 756
    :cond_3
    :goto_1
    return v1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "[BIP]"

    const-string v3, "[UICC]IOEX closeChannel back to tcp listen."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 724
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    goto :goto_0

    .line 723
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 724
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 725
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    .line 723
    throw v2

    .line 729
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    .line 731
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->requestStop()V

    .line 732
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 735
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_6

    .line 736
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 737
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_7

    .line 738
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 739
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_8

    .line 740
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 741
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_9

    .line 742
    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 746
    :cond_9
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 747
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 748
    :goto_2
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    goto :goto_1

    .line 743
    :catch_1
    move-exception v0

    .line 744
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "[BIP]"

    const-string v3, "[UICC]IOEX closeChannel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 746
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 747
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    goto :goto_2

    .line 746
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 747
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 748
    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    .line 746
    throw v2
.end method

.method public getTcpStatus()B
    .locals 3

    .prologue
    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v1, v1

    .line 962
    :goto_0
    return v1

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "[TCP]getTcpStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 874
    .local v0, "txRemaining":I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UICC]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return v0
.end method

.method public isCloseBackToTcpListen()Z
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v3, 0x5

    .line 671
    const/4 v2, 0x0

    .line 673
    .local v2, "ret":I
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]openChannel mLinkMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLinkMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :try_start_0
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]New server socket.mChannelStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v4, Ljava/net/ServerSocket;

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mPort:I

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 685
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 687
    :cond_0
    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setTcpStatus(BZ)V

    .line 688
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    .line 689
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;-><init>(Lcom/android/internal/telephony/cat/bip/Channel;Lcom/android/internal/telephony/cat/bip/TcpServerChannel;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 690
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->checkBufferSize()I

    move-result v2

    .line 693
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 694
    const-string v3, "[BIP]"

    const-string v4, "[UICC]openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 697
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->getTcpStatus()B

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 698
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    .line 699
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    move v3, v2

    .line 702
    :goto_0
    return v3

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "[UICC]IOEX to create server socket"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 682
    .local v1, "e2":Ljava/lang/Exception;
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]EX to create server socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/bip/ReceiveDataResult;)I
    .locals 9
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    .prologue
    const/4 v2, 0x5

    .line 882
    const-string v3, "[BIP]"

    const-string v4, "[UICC]new receiveData method"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const/4 v1, 0x0

    .line 885
    .local v1, "ret":I
    if-nez p2, :cond_0

    .line 886
    const-string v3, "[BIP]"

    const-string v4, "[UICC]rdr is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :goto_0
    return v2

    .line 890
    :cond_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UICC]receiveData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

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

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    new-array v3, p1, [B

    iput-object v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 893
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    if-lt v3, p1, :cond_3

    .line 894
    const-string v3, "[BIP]"

    const-string v4, "[UICC]rx buffer has enough data"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 900
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 901
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    if-nez v3, :cond_1

    .line 902
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 904
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCacheCount:I

    add-int/2addr v3, v5

    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I

    .line 905
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    if-ge v3, v5, :cond_2

    .line 906
    const-string v3, "[BIP]"

    const-string v5, ">= [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 909
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    const-string v2, "[BIP]"

    const-string v3, "[UICC]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 940
    goto :goto_0

    .line 909
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

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UICC]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 916
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v3, "[BIP]"

    const-string v4, "[UICC]rx buffer is insufficient - being"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 920
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 922
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 924
    iget v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mBufferSize:I

    if-ge v3, v5, :cond_4

    .line 925
    const-string v3, "[BIP]"

    const-string v5, "< [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 928
    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 929
    const/4 v3, 0x0

    :try_start_6
    iput v3, p2, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 930
    const/16 v1, 0x9

    .line 937
    const-string v2, "[BIP]"

    const-string v3, "[UICC]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 928
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

    .line 932
    :catch_1
    move-exception v0

    .line 934
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UICC]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    .locals 10
    .param p1, "requestCount"    # I

    .prologue
    .line 761
    new-instance v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;-><init>()V

    .line 763
    .local v5, "ret":Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;
    new-array v6, p1, [B

    iput-object v6, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    .line 764
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC]receiveData "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

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

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    if-lt v6, p1, :cond_1

    .line 768
    :try_start_0
    const-string v6, "[BIP]"

    const-string v7, "[UICC]Start to copy data from buffer"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 772
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 773
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    iput v6, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 817
    :cond_0
    :goto_0
    return-object v5

    .line 777
    :cond_1
    move v4, p1

    .line 778
    .local v4, "needCopy":I
    iget v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 779
    .local v0, "canCopy":I
    const/4 v3, 0x0

    .line 780
    .local v3, "countCopied":I
    const/4 v1, 0x0

    .line 782
    .local v1, "canExitLoop":Z
    :goto_1
    if-nez v1, :cond_0

    .line 783
    if-le v4, v0, :cond_2

    .line 785
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    .line 788
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 789
    add-int/2addr v3, v0

    .line 790
    sub-int/2addr v4, v0

    .line 804
    :goto_2
    if-nez v4, :cond_3

    .line 805
    const/4 v1, 0x1

    goto :goto_1

    .line 795
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/bip/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 798
    add-int/2addr v3, v4

    .line 799
    const/4 v4, 0x0

    goto :goto_2

    .line 808
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 809
    .local v2, "count":I
    iput v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferCount:I

    .line 810
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 811
    .end local v2    # "count":I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 800
    :catch_1
    move-exception v6

    goto :goto_2

    .line 791
    :catch_2
    move-exception v6

    goto :goto_2

    .line 774
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

    .line 821
    const/4 v2, 0x0

    .line 824
    .local v2, "ret":I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    sub-int v4, v6, v7

    .line 825
    .local v4, "txRemaining":I
    const/4 v3, 0x0

    .line 827
    .local v3, "tmpBuffer":[B
    if-nez p1, :cond_1

    .line 828
    const-string v6, "[BIP]"

    const-string v7, "[UICC]sendData - data null:"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v5

    .line 868
    .end local v2    # "ret":I
    :cond_0
    :goto_0
    return v2

    .line 832
    .restart local v2    # "ret":I
    :cond_1
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC]sendData: size of buffer:"

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

    .line 833
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC]sendData: size of buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    if-nez v6, :cond_2

    if-ne v10, p2, :cond_2

    .line 836
    move-object v3, p1

    .line 837
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    .line 851
    :goto_1
    if-ne p2, v10, :cond_0

    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v6, v6, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    const/16 v7, -0x80

    if-ne v6, v7, :cond_0

    .line 855
    :try_start_0
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S[UICC]END_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v6, v3, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 857
    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 858
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v5

    .line 861
    goto/16 :goto_0

    .line 840
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    array-length v6, p1

    if-lt v4, v6, :cond_3

    .line 841
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    array-length v9, p1

    invoke-static {p1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    iget v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I

    array-length v7, p1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 849
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mTxBuffer:[B

    goto :goto_1

    .line 844
    :cond_3
    :try_start_2
    const-string v6, "[BIP]"

    const-string v7, "[UICC]sendData - tx buffer is not enough"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 846
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move v2, v5

    .line 847
    goto/16 :goto_0

    .line 862
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v1

    .line 863
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v2, v5

    .line 864
    goto/16 :goto_0
.end method

.method public setCloseBackToTcpListen(Z)V
    .locals 0
    .param p1, "isBackToTcpListen"    # Z

    .prologue
    .line 971
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 973
    return-void
.end method

.method public setTcpStatus(BZ)V
    .locals 3
    .param p1, "status"    # B
    .param p2, "isPackED"    # Z

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    if-ne v0, p1, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UICC][TCPStatus]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v2, v2, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput p1, v0, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 950
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 951
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->changeChannelStatus(B)V

    goto :goto_0
.end method
