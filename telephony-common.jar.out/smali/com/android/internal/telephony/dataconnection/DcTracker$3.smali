.class Lcom/android/internal/telephony/dataconnection/DcTracker$3;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field final synthetic val$gprsDefaultSIM:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .locals 0

    .prologue
    .line 3806
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->val$gprsDefaultSIM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3808
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mCreateApnLock:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    .line 3809
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->syncRoamingSetting()V

    .line 3810
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 3812
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 3814
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    .line 3815
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3816
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v3, "onRecordsLoaded: notifying data availability"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3817
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v3, "simLoaded"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3827
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-eqz v1, :cond_1

    .line 3829
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v3, "default"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableApnType(Ljava/lang/String;)I

    .line 3837
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v4, 0x42003

    const-string v5, "simLoaded"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3838
    monitor-exit v2

    .line 3839
    return-void

    .line 3838
    .end local v0    # "slotId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
