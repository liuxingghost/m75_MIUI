.class Lcom/android/internal/telephony/gemini/GeminiDataConn$b;
.super Lcom/android/internal/util/State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiDataConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic P:Lcom/android/internal/telephony/gemini/GeminiDataConn;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 496
    const/4 v0, 0x0

    .line 499
    :goto_0
    return v0

    .line 444
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiDcDeactingState: REQ_CONNECT/EVENT_CONNECT("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request is defered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const v4, 0x43000

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a(Lcom/android/internal/telephony/gemini/GeminiDataConn;Landroid/os/Message;)V

    .line 449
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x44000

    if-ne v0, v2, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x44001

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    :cond_0
    move v0, v1

    .line 453
    goto :goto_0

    .line 456
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 458
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiDcDeactingState: GeminiDataConnAc.REQ_DISCONNECT type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v0, v0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x44003

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    move v0, v1

    .line 462
    goto :goto_0

    .line 466
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v2, "GeminiDcDeactingState: EVENT_DETACH_DONE"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->e(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 469
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isAllConnectionInactive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v3, "Detached and force all connection abort."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 471
    const-string v2, "dataDetached"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->e(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V

    move v0, v1

    .line 475
    goto/16 :goto_0

    .line 479
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v2, "GeminiDcDeactingState: Receive invalid event EVENT_CONNECTED!"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    move v0, v1

    .line 482
    goto/16 :goto_0

    .line 486
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;->P:Lcom/android/internal/telephony/gemini/GeminiDataConn;

    const-string v2, "GeminiDcDeactingState: EVENT_CLEANUP_ALL, already deacting."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    move v0, v1

    .line 489
    goto/16 :goto_0

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_0
        0x43002 -> :sswitch_4
        0x43003 -> :sswitch_3
        0x43004 -> :sswitch_2
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
    .end sparse-switch
.end method
