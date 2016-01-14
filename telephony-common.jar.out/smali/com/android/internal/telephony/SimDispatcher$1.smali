.class Lcom/android/internal/telephony/SimDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "SimDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SimDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimDispatcher;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    const-string v4, "[BroadcastReceiver]+"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "simState":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sim State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    # setter for: Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/SimDispatcher;->access$002(Lcom/android/internal/telephony/SimDispatcher;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    const-string v3, "LOADED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    new-instance v1, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v3, 0x187d2

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 152
    .local v1, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 155
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 158
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 159
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    const-string v4, "Notify VA for USIM ready."

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    # getter for: Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;
    invoke-static {v3}, Lcom/android/internal/telephony/SimDispatcher;->access$100(Lcom/android/internal/telephony/SimDispatcher;)Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 168
    .end local v1    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v2    # "simState":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SimDispatcher$1;->this$0:Lcom/android/internal/telephony/SimDispatcher;

    const-string v4, "[BroadcastReceiver]-"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 169
    return-void
.end method
