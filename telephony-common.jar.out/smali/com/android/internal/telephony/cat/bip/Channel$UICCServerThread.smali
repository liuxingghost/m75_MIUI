.class public Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UICCServerThread"
.end annotation


# static fields
.field private static final RETRY_ACCEPT_SLEEPTIME:I = 0x64

.field private static final RETRY_COUNT:I = 0x4


# instance fields
.field di:Ljava/io/DataInputStream;

.field mReTryCount:I

.field mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/Channel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/Channel;Lcom/android/internal/telephony/cat/bip/TcpServerChannel;)V
    .locals 2
    .param p2, "tcpServerChannel"    # Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    .prologue
    const/4 v1, 0x0

    .line 470
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mReTryCount:I

    .line 465
    iput-object v1, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 472
    const-string v0, "[BIP]"

    const-string v1, "OpenServerSocketThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    .line 475
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 481
    const/16 v15, 0x578

    new-array v10, v15, [B

    .line 483
    .local v10, "localBuffer":[B
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr: Run Enter"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelStatus:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->getTcpStatus()B

    move-result v15

    const/16 v16, 0x40

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 487
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    const/16 v16, 0x40

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setTcpStatus(BZ)V

    .line 492
    :goto_1
    :try_start_0
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:Listen to wait client connection..."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:Receive a client connection."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    const/16 v16, -0x80

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setTcpStatus(BZ)V

    .line 528
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-nez v15, :cond_1

    .line 530
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 535
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 537
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-nez v15, :cond_2

    .line 539
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    new-instance v16, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSocket:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 545
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    # getter for: Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z
    invoke-static {v15}, Lcom/android/internal/telephony/cat/bip/Channel;->access$000(Lcom/android/internal/telephony/cat/bip/Channel;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 546
    const/4 v7, 0x1

    .line 547
    .local v7, "goOnRead":Z
    const/4 v14, 0x0

    .line 548
    .local v14, "recvLen":I
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr: Start to read data from network"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v15, 0x0

    :try_start_3
    invoke-static {v10, v15}, Ljava/util/Arrays;->fill([BB)V

    .line 551
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v15, v10}, Ljava/io/DataInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v14

    .line 564
    const-string v15, "[BIP]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[UICC]ServerTr: Receive data:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    if-ltz v14, :cond_11

    .line 566
    const/4 v13, 0x0

    .line 567
    .local v13, "rSize":I
    const/4 v12, 0x0

    .local v12, "localBufferOffset":I
    const/4 v11, 0x0

    .line 568
    .local v11, "localBufferCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 571
    :try_start_4
    const-string v15, "[BIP]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[UICC]ServerTr:mRxBufferCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    if-nez v15, :cond_d

    .line 574
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v15, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iput v14, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 576
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/cat/bip/Channel;->dataAvailable(I)V

    .line 596
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    move/from16 v17, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v0, v17

    if-lt v15, v0, :cond_10

    .line 598
    :try_start_5
    const-string v15, "[BIP]"

    const-string v17, "[UICC]ServerTr:mRxBuffer is full."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 609
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    if-lez v15, :cond_3

    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    if-lez v15, :cond_5

    .line 611
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-gt v15, v0, :cond_f

    .line 614
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v13, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    .line 618
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v10, v12, v15, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 620
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    move/from16 v17, v0

    sub-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    .line 621
    add-int/2addr v12, v13

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    goto/16 :goto_3

    .line 629
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v15

    .line 489
    .end local v7    # "goOnRead":Z
    .end local v11    # "localBufferCount":I
    .end local v12    # "localBufferOffset":I
    .end local v13    # "rSize":I
    .end local v14    # "recvLen":I
    :cond_6
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:TCP status = TCP_STATUS_LISTEN"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 494
    :catch_0
    move-exception v4

    .line 495
    .local v4, "e":Ljava/io/IOException;
    const-string v15, "[BIP]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[UICC]ServerTr:Fail to accept server socket retry:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mReTryCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mReTryCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_7

    .line 497
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mReTryCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mReTryCount:I

    .line 499
    const-wide/16 v15, 0x64

    :try_start_7
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 500
    :catch_1
    move-exception v8

    .line 501
    .local v8, "ie":Ljava/lang/InterruptedException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:InterruptedException: sleep for server socket accept retry."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    .end local v8    # "ie":Ljava/lang/InterruptedException;
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mReTryCount:I

    .line 507
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v15, :cond_8

    .line 508
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 509
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v15, :cond_9

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 515
    :cond_9
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v15}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 519
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/cat/bip/Channel;->clearChannelBuffer(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 521
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setTcpStatus(BZ)V

    .line 654
    return-void

    .line 511
    :catch_2
    move-exception v5

    .line 512
    .local v5, "e1":Ljava/io/IOException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:IOException: input/output stream close."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 516
    .end local v5    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 517
    .local v6, "e2":Ljava/io/IOException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:IOException: socket close."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 531
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 532
    .local v9, "ioe":Ljava/io/IOException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:IOException: getInputStream."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    .end local v9    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 541
    .restart local v9    # "ioe":Ljava/io/IOException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:IOException: getOutputStream."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v7    # "goOnRead":Z
    .restart local v14    # "recvLen":I
    :catch_6
    move-exception v4

    .line 553
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:read io exception."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    const/4 v15, 0x0

    invoke-static {v10, v15}, Ljava/util/Arrays;->fill([BB)V

    .line 556
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 557
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 558
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/cat/bip/Channel;->clearChannelBuffer(Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 646
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "goOnRead":Z
    .end local v14    # "recvLen":I
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    # getter for: Lcom/android/internal/telephony/cat/bip/Channel;->mStop:Z
    invoke-static {v15}, Lcom/android/internal/telephony/cat/bip/Channel;->access$000(Lcom/android/internal/telephony/cat/bip/Channel;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 648
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr: stop"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "goOnRead":Z
    .restart local v14    # "recvLen":I
    :catch_7
    move-exception v5

    .line 560
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:IOException input stream."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 581
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v11    # "localBufferCount":I
    .restart local v12    # "localBufferOffset":I
    .restart local v13    # "rSize":I
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0

    sub-int v15, v15, v17

    if-gt v14, v15, :cond_e

    .line 584
    move v13, v14

    .line 589
    :goto_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBuffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v15, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    .line 592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferOffset:I

    .line 593
    const-string v15, "[BIP]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[UICC]ServerTr:rSize: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", mRxBufferCacheCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 586
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0

    sub-int v13, v15, v17

    move v12, v13

    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    sub-int v17, v14, v13

    move/from16 v0, v17

    iput v0, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCacheCount:I

    goto/16 :goto_8

    .line 600
    :catch_8
    move-exception v4

    .line 601
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v15, "[BIP]"

    const-string v17, "[UICC]ServerTr:InterruptedException: mRxBufferCount >= mBufferSize"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/cat/bip/Channel;->clearChannelBuffer(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 605
    const/4 v7, 0x0

    .line 629
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_9
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 642
    if-eqz v7, :cond_c

    .line 644
    const-string v15, "[BIP]"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[UICC]ServerTr: buffer data:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 616
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/Channel;->mBufferSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/cat/bip/Channel;->mRxBufferCount:I

    move/from16 v17, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int v13, v15, v17

    goto/16 :goto_4

    .line 625
    :cond_10
    const/4 v7, 0x1

    .line 626
    goto :goto_9

    .line 631
    .end local v11    # "localBufferCount":I
    .end local v12    # "localBufferOffset":I
    .end local v13    # "rSize":I
    :cond_11
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr: client diconnected"

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 634
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 638
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/bip/Channel;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/cat/bip/Channel;->clearChannelBuffer(Z)V

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/bip/TcpServerChannel;

    const/16 v16, 0x40

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/cat/bip/TcpServerChannel;->setTcpStatus(BZ)V

    goto/16 :goto_7

    .line 635
    :catch_9
    move-exception v4

    .line 636
    .local v4, "e":Ljava/io/IOException;
    const-string v15, "[BIP]"

    const-string v16, "[UICC]ServerTr:len<0,IOException input stream."

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a
.end method
