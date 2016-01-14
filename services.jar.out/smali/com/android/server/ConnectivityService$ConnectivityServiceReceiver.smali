.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 5944
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/ConnectivityService$1;

    .prologue
    .line 5944
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5946
    if-nez p2, :cond_0

    .line 6020
    :goto_0
    return-void

    .line 5947
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5948
    .local v1, "action":Ljava/lang/String;
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received intent ==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mSynchronizedObject:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 5950
    :try_start_0
    const-string v10, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5952
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "gprs_connection_setting"

    const/4 v13, -0x4

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .line 5953
    .local v6, "preSlotId":I
    const-string v10, "simid"

    const-wide/16 v12, -0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 5955
    .local v8, "simId":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, -0x5

    cmp-long v10, v12, v14

    if-nez v10, :cond_3

    .line 5956
    :cond_1
    const/4 v9, -0x1

    .line 5981
    .local v9, "slotId":I
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "non-gemini, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "(from multi_sim_id_key), slotId: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 5982
    const/4 v3, 0x0

    .line 5983
    .local v3, "enabled":Z
    const/4 v2, 0x0

    .line 5985
    .local v2, "bSkipEnabled":Z
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 5986
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_4

    const/4 v3, 0x0

    .line 5991
    :goto_2
    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10, v3}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V

    .line 6019
    .end local v2    # "bSkipEnabled":Z
    .end local v3    # "enabled":Z
    .end local v6    # "preSlotId":I
    .end local v8    # "simId":Ljava/lang/Long;
    .end local v9    # "slotId":I
    :cond_2
    :goto_3
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 5958
    .restart local v6    # "preSlotId":I
    .restart local v8    # "simId":Ljava/lang/Long;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    # invokes: Lcom/android/server/ConnectivityService;->getSlotById(J)I
    invoke-static {v10, v12, v13}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;J)I

    move-result v9

    .restart local v9    # "slotId":I
    goto :goto_1

    .line 5986
    .restart local v2    # "bSkipEnabled":Z
    .restart local v3    # "enabled":Z
    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    .line 5988
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_6

    const/4 v2, 0x0

    :goto_4
    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto :goto_4

    .line 5993
    .end local v2    # "bSkipEnabled":Z
    .end local v3    # "enabled":Z
    .end local v6    # "preSlotId":I
    .end local v8    # "simId":Ljava/lang/Long;
    .end local v9    # "slotId":I
    :cond_7
    const-string v10, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 5994
    const-string v10, "tethering_isconnected"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 5995
    .local v4, "isConnected":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10, v4}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I

    goto :goto_3

    .line 5996
    .end local v4    # "isConnected":Z
    :cond_8
    const-string v10, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 5997
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 5998
    .local v5, "obtainBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_a

    .line 6000
    invoke-static {v5}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v7

    .line 6001
    .local v7, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_2

    .line 6002
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v10, 0x1

    :goto_5
    const/4 v13, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v12, v10, v13}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;ZZ)V

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 6007
    .end local v7    # "serviceState":Landroid/telephony/ServiceState;
    :cond_a
    const-string v10, "get bundle error!!"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_3

    .line 6009
    .end local v5    # "obtainBundle":Landroid/os/Bundle;
    :cond_b
    const-string v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6010
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v10, 0x1

    :goto_6
    const/4 v13, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v12, v10, v13}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_c
    const/4 v10, 0x0

    goto :goto_6
.end method
