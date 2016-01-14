.class Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.ANY_DEDICATE_DATA_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, intent action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xfa0

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    const-string v3, "apnType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "apnType":Ljava/lang/String;
    const-string v3, "imsDataChanged"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 118
    .local v2, "imsChanged":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isMsgAllowed(Ljava/lang/String;I)Z
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, intent action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1770

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 122
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "imsChanged":I
    :cond_2
    const-string v3, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    const-string v3, "apnType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .restart local v1    # "apnType":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, intent action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x17d4

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 128
    .end local v1    # "apnType":Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1b58

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
