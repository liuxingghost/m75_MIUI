.class Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;
.super Landroid/content/BroadcastReceiver;
.source "ViaGpsProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/ViaGpsProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 287
    :cond_0
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] ConnectivityManager::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 289
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 290
    .local v2, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] onDataConnectionStateChanged, state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] onDataConnectionStateChanged, mGpsWapSrvStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$000(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] onDataConnectionStateChanged, mGpsWapConnConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$100(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mWaitforDataConnecting ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$200(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v7, :cond_5

    .line 300
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 301
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I
    invoke-static {v7, v12}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$302(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 317
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$000(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 318
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I
    invoke-static {v7, v10}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$002(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 319
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z
    invoke-static {v7, v11}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$102(Lcom/android/internal/telephony/cdma/ViaGpsProcess;Z)Z

    .line 320
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # invokes: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$400(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)V

    .line 346
    .end local v2    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    return-void

    .line 303
    .restart local v2    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v5, 0x1

    .line 307
    .local v5, "isCdmaDataCall":Z
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] onDataConnectionStateChanged Network Type is Cdma Data Call?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v5, :cond_3

    .line 309
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I
    invoke-static {v7, v11}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$302(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 313
    :goto_2
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] onDataConnectionStateChanged, mDataCallState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$300(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    const/4 v8, 0x3

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$302(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I

    goto :goto_2

    .line 321
    .end local v5    # "isCdmaDataCall":Z
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$200(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 322
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z
    invoke-static {v7, v10}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$202(Lcom/android/internal/telephony/cdma/ViaGpsProcess;Z)Z

    .line 323
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # invokes: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$400(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)V

    goto :goto_1

    .line 325
    :cond_5
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v7, :cond_1

    .line 326
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I
    invoke-static {v7, v10}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$302(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 327
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$000(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v7

    if-ne v7, v12, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$100(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 329
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V
    invoke-static {v7, v10, v8}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$500(Lcom/android/internal/telephony/cdma/ViaGpsProcess;ILandroid/os/Message;)V

    .line 330
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I
    invoke-static {v7, v10}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$002(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I

    .line 331
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z
    invoke-static {v7, v10}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$102(Lcom/android/internal/telephony/cdma/ViaGpsProcess;Z)Z

    goto/16 :goto_1

    .line 334
    .end local v2    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_6
    const-string v7, "com.android.internal.telephony.via-gps-mpc-setting-notify"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 335
    const-string v7, "via-gps-mpc-setting-ip"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "ip":Ljava/lang/String;
    const-string v7, "via-gps-mpc-setting-port"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "port":Ljava/lang/String;
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] INTENT_VIA_GPS_MPC_SETTING_NOTIFY IP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", PORT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$600(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    invoke-virtual {v8, v12}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v4, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestAGPSSetMpcIpPort(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 340
    .end local v4    # "ip":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    :cond_7
    const-string v7, "com.android.internal.telephony.via-simu-request"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 341
    new-array v1, v12, [I

    fill-array-data v1, :array_0

    .line 342
    .local v1, "data":[I
    const-string v7, "com.android.internal.telephony.via-simu-request-param"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    aput v7, v1, v10

    .line 343
    const-string v7, "VIA_GPS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VIA] INTENT_VIA_SIMU_REQUEST ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;->this$0:Lcom/android/internal/telephony/cdma/ViaGpsProcess;

    # invokes: Lcom/android/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V
    invoke-static {v7, v1}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->access$700(Lcom/android/internal/telephony/cdma/ViaGpsProcess;[I)V

    goto/16 :goto_1

    .line 341
    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method