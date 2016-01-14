.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field private mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

.field private mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mIsConnect:Z

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] enter InactiveState state [dp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eqz v0, :cond_1

    .line 428
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mIsConnect:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->clearSettings()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    .line 436
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v1, "DedicateDataConnection enter InactiveState without notification"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 441
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 442
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 379
    const/4 v4, 0x0

    .line 380
    .local v4, "retVal":Z
    const/4 v0, 0x0

    .line 381
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 383
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 419
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DedicateDataConnection receive unhandled message [InactiveState, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 421
    :goto_0
    return v4

    .line 385
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v6, "InactiveState msg.what=EVENT_CONNECT"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 386
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V

    .line 387
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2100(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 388
    const/4 v4, 0x1

    .line 389
    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v6, "InactiveState: msg.what=EVENT_DISCONNECT"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 393
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v6, v5, v7}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 394
    const/4 v4, 0x1

    .line 395
    goto :goto_0

    .line 397
    :pswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v6, "InactiveState receive EVENT_UPDATE"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 398
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 399
    .restart local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onUpdate(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v3

    .line 400
    .local v3, "result":Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$android$internal$telephony$dataconnection$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 413
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InactiveState unknown SetupResult, should not happen ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 402
    :pswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v6, "InactiveState receive EVENT_UPDATE and is connected"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 403
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v6, "activation"

    # setter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1702(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 405
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 415
    :goto_1
    const/4 v4, 0x1

    .line 416
    goto/16 :goto_0

    .line 408
    :pswitch_5
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    iget v5, v5, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 409
    .local v2, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InactiveState receive EVENT_UPDATE and is disconnected ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 410
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    goto :goto_1

    .line 383
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 400
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setEnterNotificationParams(ZLcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p1, "isToConnect"    # Z
    .param p2, "dp"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p3, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mIsConnect:Z

    .line 446
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mDp:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 447
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 448
    return-void
.end method
