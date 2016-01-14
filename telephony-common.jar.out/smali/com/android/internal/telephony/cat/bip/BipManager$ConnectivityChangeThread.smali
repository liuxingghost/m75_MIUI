.class public Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectivityChangeThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/content/Intent;)V
    .locals 2
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    const-string v0, "[BIP]"

    const-string v1, "ConnectivityChangeThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iput-object p2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    .line 1012
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1017
    const-string v13, "[BIP]"

    const-string v14, "ConnectivityChangeThread Enter"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v13, "[BIP]"

    const-string v14, "Connectivity changed"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const/4 v9, 0x0

    .line 1020
    .local v9, "ret":I
    const/4 v8, 0x0

    .line 1022
    .local v8, "response":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string v14, "networkInfo"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 1023
    .local v5, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string v14, "simId"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1024
    .local v10, "simId":I
    const-string v13, "[BIP]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EXTRA_SIM_ID :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",mSimId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I
    invoke-static {v15}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v13

    if-eq v10, v13, :cond_2

    .line 1026
    :cond_0
    const-string v13, "[BIP]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "receive CONN intent sim!="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mSimId:I
    invoke-static {v15}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$600(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_1
    :goto_0
    return-void

    .line 1029
    :cond_2
    const-string v13, "[BIP]"

    const-string v14, "receive valid CONN intent"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    .line 1033
    .local v12, "type":I
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    .line 1034
    .local v11, "state":Landroid/net/NetworkInfo$State;
    const-string v13, "[BIP]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "network type is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v13, "[BIP]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "network state is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    .line 1038
    sget-object v13, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v13, :cond_8

    .line 1039
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v14

    if-ne v13, v14, :cond_6

    .line 1040
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->requestRouteToHost()Z
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$700(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1041
    const-string v13, "[BIP]"

    const-string v14, "Fail - requestRouteToHost"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    const/4 v9, 0x2

    .line 1044
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->establishLink()I
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v9

    .line 1045
    const/16 v13, 0xa

    if-eq v9, v13, :cond_1

    .line 1046
    if-eqz v9, :cond_4

    const/4 v13, 0x3

    if-ne v9, v13, :cond_5

    .line 1047
    :cond_4
    const-string v13, "[BIP]"

    const-string v14, "channel is activated"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/16 v14, 0x80

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$900(Lcom/android/internal/telephony/cat/bip/BipManager;I)V

    .line 1053
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v14, 0x0

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1e

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v9, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1055
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1050
    :cond_5
    const-string v13, "[BIP]"

    const-string v14, "channel is un-activated"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v14, 0x0

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->updateCurrentChannelStatus(I)V
    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$900(Lcom/android/internal/telephony/cat/bip/BipManager;I)V

    goto :goto_1

    .line 1058
    :cond_6
    const-string v13, "[BIP]"

    const-string v14, "Error in channel state."

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    const/4 v13, 0x7

    if-gt v4, v13, :cond_1

    .line 1060
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v3

    .line 1061
    .local v3, "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    if-eqz v3, :cond_7

    .line 1062
    const-string v13, "[BIP]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">cid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",protocolType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1065
    .end local v3    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    .end local v4    # "i":I
    :cond_8
    sget-object v13, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v13, :cond_1

    .line 1066
    const-string v13, "[BIP]"

    const-string v14, "network state - disconnected"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v14

    if-ne v13, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1000(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_a

    .line 1069
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v3

    .line 1070
    .restart local v3    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const/4 v9, 0x2

    .line 1072
    if-eqz v3, :cond_9

    .line 1073
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 1074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 1079
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v14, 0x2

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1002(Lcom/android/internal/telephony/cat/bip/BipManager;I)I

    .line 1080
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v14, 0x0

    iput v14, v13, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 1081
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v14, 0x0

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x1e

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v9, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1083
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1076
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    iget-object v15, v15, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v15, v15, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    goto :goto_3

    .line 1085
    .end local v3    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_a
    const/4 v4, 0x0

    .line 1086
    .restart local v4    # "i":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v2, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .line 1088
    .local v1, "additionalInfo":[B
    const-string v13, "[BIP]"

    const-string v14, "this is a drop link"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v14, 0x2

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelStatus:I
    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1002(Lcom/android/internal/telephony/cat/bip/BipManager;I)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    const/4 v14, 0x0

    iput v14, v13, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    .line 1092
    new-instance v7, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v13, 0xa

    invoke-direct {v7, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 1094
    .local v7, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v4, 0x1

    :goto_4
    const/4 v13, 0x7

    if-gt v4, v13, :cond_d

    .line 1095
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v14}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v14

    if-ne v13, v14, :cond_c

    .line 1097
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/bip/Channel;

    move-result-object v3

    .line 1098
    .restart local v3    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    const-string v13, "[BIP]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "channel protocolType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const/4 v13, 0x1

    iget v14, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-eq v13, v14, :cond_b

    const/4 v13, 0x2

    iget v14, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mProtocolType:I

    if-ne v13, v14, :cond_c

    .line 1104
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$1100(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/net/ConnectivityManager;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "enableSUPL"

    invoke-virtual {v13, v14, v15}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1106
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/Channel;->closeChannel()I

    .line 1107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->removeChannel(I)I

    .line 1108
    const/16 v13, -0x48

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget v13, v3, Lcom/android/internal/telephony/cat/bip/Channel;->mChannelId:I

    or-int/lit8 v13, v13, 0x0

    int-to-byte v13, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    .end local v3    # "channel":Lcom/android/internal/telephony/cat/bip/Channel;
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1113
    :catch_0
    move-exception v6

    .line 1114
    .local v6, "ne":Ljava/lang/NullPointerException;
    const-string v13, "[BIP]"

    const-string v14, "NE,channel null"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 1119
    .end local v6    # "ne":Ljava/lang/NullPointerException;
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_f

    .line 1120
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v1, v13, [B

    .line 1121
    const/4 v4, 0x0

    :goto_6
    array-length v13, v1

    if-ge v4, v13, :cond_e

    .line 1122
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    aput-byte v13, v1, v4

    .line 1121
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1124
    :cond_e
    const/16 v13, 0x82

    invoke-virtual {v7, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 1125
    const/16 v13, 0x81

    invoke-virtual {v7, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 1126
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1127
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 1128
    const-string v13, "[BIP]"

    const-string v14, "onEventDownload: for channel status"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v13, v7}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 1131
    :cond_f
    const-string v13, "[BIP]"

    const-string v14, "onEventDownload: No client channels are opened."

    invoke-static {v13, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
