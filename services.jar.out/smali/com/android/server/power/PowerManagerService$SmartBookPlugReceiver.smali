.class final Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartBookPlugReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3435
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3437
    :try_start_0
    const-string v3, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<<<< Smartbook Plug >>>>> Receiving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    const-string v3, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3442
    .local v1, "sbPlugState":Z
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/DisplayPowerController;->sbCheckAndDismissElectron()V

    .line 3445
    const-string v3, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartBookPlugReceiver: sbPlugState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSbPlugState:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v3, v1, :cond_1

    .line 3448
    if-eqz v1, :cond_0

    .line 3450
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSBRDMALimited:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3451
    const-string v3, "persist.smb.phone.both.on"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3453
    const-string v3, "PowerManagerService"

    const-string v5, "smart book mode: both smart book and phone screen keep on"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3477
    :cond_0
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mSbPlugState:Z
    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3478
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v5, 0x4000

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v3, v5}, Lcom/android/server/power/PowerManagerService;->access$976(Lcom/android/server/power/PowerManagerService;I)I

    .line 3479
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)V

    .line 3481
    const/4 v3, 0x2

    const/4 v5, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetSbScreenControl(II)V
    invoke-static {v3, v5}, Lcom/android/server/power/PowerManagerService;->access$2900(II)V

    .line 3482
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mSBSleeped:Z
    invoke-static {v3, v5}, Lcom/android/server/power/PowerManagerService;->access$3002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3484
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3485
    return-void

    .line 3456
    :cond_2
    :try_start_3
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3457
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_4

    .line 3458
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3459
    const-string v3, "PowerManagerService"

    const-string v5, "SmartBookPlugReceiver: InCalling, cannot trigger sbGoToSleep"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3470
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3471
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException from getPhoneInterface():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3484
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "sbPlugState":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 3461
    .restart local v1    # "sbPlugState":Z
    .restart local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/power/PowerManagerService;->sbGoToSleep(JI)V

    goto :goto_0

    .line 3464
    :cond_4
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/power/PowerManagerService;->sbGoToSleep(JI)V

    goto :goto_0

    .line 3468
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_5
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/power/PowerManagerService;->sbGoToSleep(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
