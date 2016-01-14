.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mStoped:Z

.field mySimId:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 805
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 1
    .param p2, "simId"    # I

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    .line 808
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 809
    iput p2, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    .line 810
    return-void
.end method

.method private getRilSocketName(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 813
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_2:Ljava/lang/String;

    .line 820
    :goto_0
    return-object v0

    .line 815
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_3:Ljava/lang/String;

    goto :goto_0

    .line 817
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_4:Ljava/lang/String;

    goto :goto_0

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL_1:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x10

    .line 827
    const/4 v5, 0x0

    .line 828
    .local v5, "retryCount":I
    iget v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;

    move-result-object v8

    .line 833
    .local v8, "socketRil":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    if-eqz v10, :cond_0

    .line 960
    :goto_1
    return-void

    .line 835
    :cond_0
    const/4 v6, 0x0

    .line 839
    .local v6, "s":Landroid/net/LocalSocket;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 841
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->setSocketNames()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;)V

    .line 844
    :cond_1
    iget v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RIL$RILReceiver;->getRilSocketName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 866
    :try_start_1
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 867
    .end local v6    # "s":Landroid/net/LocalSocket;
    .local v7, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v8, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 869
    .local v2, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 902
    const/4 v5, 0x0

    .line 904
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v7, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 905
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connected to \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 906
    sget-object v10, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connected to \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 908
    const/4 v3, 0x0

    .line 910
    .local v3, "length":I
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 915
    .local v1, "is":Ljava/io/InputStream;
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v1, v10}, Lcom/android/internal/telephony/RIL;->access$900(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    .line 917
    if-gez v3, :cond_5

    .line 939
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    sget-object v10, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disconnected from \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v11, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 945
    :try_start_6
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 949
    :goto_4
    :try_start_7
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 950
    iget v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    invoke-static {v10}, Lcom/android/internal/telephony/RILRequest;->resetSerial(I)V

    .line 953
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, 0x1

    const/4 v12, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/RIL;->access$1100(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 954
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    .end local v7    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v9

    .line 955
    .local v9, "tr":Ljava/lang/Throwable;
    sget-object v10, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    const-string v11, "Uncaught exception"

    invoke-static {v10, v11, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v11, -0x1

    # invokes: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$1200(Lcom/android/internal/telephony/RIL;I)V

    goto/16 :goto_1

    .line 870
    .end local v9    # "tr":Ljava/lang/Throwable;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v6, :cond_2

    .line 873
    :try_start_8
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 882
    :cond_2
    :goto_6
    if-ne v5, v13, :cond_4

    .line 883
    :try_start_9
    sget-object v10, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " times, continuing to retry silently"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 894
    :cond_3
    :goto_7
    const-wide/16 v10, 0xfa0

    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 898
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 899
    goto/16 :goto_0

    .line 887
    :cond_4
    if-lez v5, :cond_3

    if-ge v5, v13, :cond_3

    .line 888
    :try_start_b
    sget-object v10, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket; retrying after timeout"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_7

    .line 922
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v6    # "s":Landroid/net/LocalSocket;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :cond_5
    :try_start_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 923
    .local v4, "p":Landroid/os/Parcel;
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 924
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 928
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v10, v4}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 929
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 931
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "p":Landroid/os/Parcel;
    :catch_2
    move-exception v0

    .line 932
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_d
    sget-object v10, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' socket closed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 934
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 935
    .restart local v9    # "tr":Ljava/lang/Throwable;
    sget-object v10, Lcom/android/internal/telephony/RIL;->RILJ_LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uncaught exception read length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_3

    .line 875
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    .end local v7    # "s":Landroid/net/LocalSocket;
    .end local v9    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :catch_4
    move-exception v10

    goto/16 :goto_6

    .line 895
    :catch_5
    move-exception v10

    goto/16 :goto_8

    .line 946
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v6    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v10

    goto/16 :goto_4

    .line 870
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
