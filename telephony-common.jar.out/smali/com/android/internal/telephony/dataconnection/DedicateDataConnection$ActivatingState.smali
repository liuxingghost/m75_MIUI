.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
.super Lcom/android/internal/util/State;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 454
    const/4 v3, 0x0

    .line 455
    .local v3, "retVal":Z
    const/4 v0, 0x0

    .line 456
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 457
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 497
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DedicateDataConnection receive unhandled message [ActivatingState, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 499
    :goto_0
    return v3

    .line 459
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_CONNECT (defer)"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V

    .line 461
    const/4 v3, 0x1

    .line 462
    goto :goto_0

    .line 464
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_DISCONNECT (abort)"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 465
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onAbort(Ljava/lang/Object;)V

    .line 466
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 467
    const/4 v3, 0x1

    .line 468
    goto :goto_0

    .line 470
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_MODIFY (defer)"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 471
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V

    .line 472
    const/4 v3, 0x1

    .line 473
    goto :goto_0

    .line 475
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    const-string v5, "ActivatingState receive EVENT_SETUP_DATA_CONNECTION_DONE"

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 476
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 477
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .line 478
    .restart local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    invoke-static {v4, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$2900(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v2

    .line 479
    .local v2, "result":Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;->$SwitchMap$com$android$internal$telephony$dataconnection$DedicateDataCallState$SetupResult:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 491
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivatingState unknown SetupResult, should not happen ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivatingState receive EVENT_SETUP_DATA_CONNECTION_DONE and SUCCESS [cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 482
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 483
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$3000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    .line 493
    :goto_1
    const/4 v3, 0x1

    .line 494
    goto/16 :goto_0

    .line 486
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivatingState receive EVENT_SETUP_DATA_CONNECTION_DONE and FAIL [cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V

    .line 487
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;->setEnterNotificationParams(ZLcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 488
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$1000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->access$3100(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 457
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
