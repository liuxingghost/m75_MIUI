.class final Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;
.super Landroid/os/Handler;
.source "PsArbitrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PsArbitrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# static fields
.field public static final EVENT_EXECUTE_COMMAND_QUEUE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PsArbitrator;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PsArbitrator;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    .line 915
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 916
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PsArbitrator MainThreadHandler msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 922
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    const-string v1, "Unexpect!"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 931
    :goto_0
    return-void

    .line 924
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    const-string v1, "EVENT_EXCUTE_COMMAND_QUEUE"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;->this$0:Lcom/android/internal/telephony/PsArbitrator;

    iget-object v0, v0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->executeMmdcDataCmdsQueue()V

    goto :goto_0

    .line 922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
