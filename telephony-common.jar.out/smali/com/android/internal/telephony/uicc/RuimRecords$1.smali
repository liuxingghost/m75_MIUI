.class Lcom/android/internal/telephony/uicc/RuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 1112
    if-nez p2, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1115
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1116
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1500(Lcom/android/internal/telephony/uicc/RuimRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1117
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mSIMInfoReady:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1602(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1118
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 1120
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1121
    .local v1, "phbFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1122
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1123
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1500(Lcom/android/internal/telephony/uicc/RuimRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1141
    .end local v1    # "phbFilter":Landroid/content/IntentFilter;
    :cond_2
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v3, "ACTION_SHUTDOWN_IPO: clear PHB_READY systemproperties"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1143
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getMySimId()I

    move-result v2

    if-ne v5, v2, :cond_3

    .line 1144
    const-string v2, "gsm.sim.ril.phbready.2"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1702(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    goto :goto_0

    .line 1146
    :cond_3
    const-string v2, "gsm.sim.ril.phbready"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
