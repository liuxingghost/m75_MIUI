.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImsi:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 4277
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4284
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4286
    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4287
    .local v4, "state":Ljava/lang/String;
    const-string v5, "IMSI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4288
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 4289
    .local v3, "imsi":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IA: Receive ACTION_SIM_STATE_CHANGED state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldImsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4290
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->mImsi:Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4293
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 4318
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4297
    :cond_1
    const-string v5, "android.intent.action.GPRS_TRANSFER_TYPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4298
    const-string v5, "gemini.gprs.transfer.type"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4299
    .local v2, "gprsTransferType":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GPRS Transfer type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4300
    if-ne v2, v6, :cond_2

    .line 4301
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsCallPrefer:Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$302(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    goto :goto_0

    .line 4303
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsCallPrefer:Z
    invoke-static {v5, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$302(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    goto :goto_0

    .line 4305
    .end local v2    # "gprsTransferType":I
    :cond_3
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4307
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v8, "Received ConnectivityManager.ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4308
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4309
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v6

    :goto_1
    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsTetheredMode:Z
    invoke-static {v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$402(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4310
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TETHER_STATE_CHANGED]mIsTetheredMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsTetheredMode:Z
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mChargingMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v9, v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->mChargingMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4312
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsTetheredMode:Z
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->mChargingMode:Z

    if-nez v5, :cond_5

    .line 4313
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateFDMDEnableStatus(Z)V

    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 4309
    goto :goto_1

    .line 4315
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateFDMDEnableStatus(Z)V

    goto/16 :goto_0
.end method
