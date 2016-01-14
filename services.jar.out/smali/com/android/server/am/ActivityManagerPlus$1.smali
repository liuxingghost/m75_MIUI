.class Lcom/android/server/am/ActivityManagerPlus$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerPlus;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerPlus;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerPlus;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 273
    const-string v11, "ActivityManagerPlus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Receive: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v11, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 278
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 412
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v11, "package_name"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 283
    const-string v11, "enabled"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 284
    .local v4, "enabled":Ljava/lang/Boolean;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 285
    .local v3, "count":I
    add-int/lit8 v5, v3, -0x1

    .line 286
    .local v5, "i":I
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 288
    .local v1, "alreadyInList":Ljava/lang/Boolean;
    if-eqz v3, :cond_3

    .line 289
    :goto_1
    if-ltz v5, :cond_2

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 290
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 292
    :cond_2
    if-gez v5, :cond_4

    .line 293
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 298
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    .line 299
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_4
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 300
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 301
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 303
    .end local v1    # "alreadyInList":Ljava/lang/Boolean;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "count":I
    .end local v4    # "enabled":Ljava/lang/Boolean;
    .end local v5    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_6
    const-string v11, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 304
    const-string v11, "ActivityManagerPlus"

    const-string v12, "ipo PREBOOT_IPO"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v9, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v9}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 306
    .local v9, "stMgr":Lcom/android/internal/app/ShutdownManager;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/internal/app/ShutdownManager;->preRestoreStates(Landroid/content/Context;)V

    .line 310
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcessListSize()I

    move-result v11

    if-eqz v11, :cond_7

    .line 311
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/am/ActivityManagerPlus$1$1;

    invoke-direct {v12, p0, v9}, Lcom/android/server/am/ActivityManagerPlus$1$1;-><init>(Lcom/android/server/am/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V

    const-wide/16 v13, 0x1f4

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    :goto_3
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # invokes: Lcom/android/server/am/ActivityManagerPlus;->removeAllTasks()V
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)V

    .line 353
    const-string v11, "ActivityManagerPlus"

    const-string v12, "finished"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->closeSystemDialogs()V

    .line 358
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 359
    iget-object v12, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_4
    # setter for: Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z
    invoke-static {v12, v11}, Lcom/android/server/am/ActivityManagerPlus;->access$302(Lcom/android/server/am/ActivityManagerPlus;Z)Z

    .line 362
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mFlightModeOn:Z
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$300(Lcom/android/server/am/ActivityManagerPlus;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 363
    const-string v11, "ActivityManagerPlus"

    const-string v12, "ActivityManagerPlus turn on flight mode for powerOffAlarm"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v11, "persist.sys.ams.recover"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 350
    :cond_7
    const-string v11, "ActivityManagerPlus"

    const-string v12, "prebootKillProcess list empty, don\'t need to perform kill"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 359
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 370
    .end local v9    # "stMgr":Lcom/android/internal/app/ShutdownManager;
    :cond_9
    const-string v11, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 371
    const-string v11, "ActivityManagerPlus"

    const-string v12, "ipo BOOT_IPO"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v9, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v9}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 374
    .restart local v9    # "stMgr":Lcom/android/internal/app/ShutdownManager;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 376
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 377
    const-string v11, "ActivityManagerPlus"

    const-string v12, "power off alarm enabled"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/am/ActivityManagerPlus$1$2;

    invoke-direct {v12, p0}, Lcom/android/server/am/ActivityManagerPlus$1$2;-><init>(Lcom/android/server/am/ActivityManagerPlus$1;)V

    const-wide/16 v13, 0x1f4

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 384
    :cond_a
    const-string v11, "unencrypted"

    const-string v12, "ro.crypto.state"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 385
    const-string v11, "ActivityManagerPlus"

    const-string v12, "ipo BOOT_IPO: removeIPOWin"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityManagerService;->removeIPOWin(Landroid/content/Context;)V

    .line 387
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    monitor-enter v12

    .line 388
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerPlus;->IPOBootCompletedLocked()V

    .line 389
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 393
    .end local v9    # "stMgr":Lcom/android/internal/app/ShutdownManager;
    :cond_b
    const-string v11, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 395
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPowerOffAlarmUtility:Lcom/android/server/am/PowerOffAlarmUtility;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 396
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # invokes: Lcom/android/server/am/ActivityManagerPlus;->removeAllTasks()V
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)V

    .line 398
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v12, 0x1

    const-string v13, "IPO Bootup Start"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityManagerPlus;->monitorBootReceiver(ZLjava/lang/String;)V

    .line 400
    const-string v11, "ActivityManagerPlus"

    const-string v12, "handling SHUTDOWN_IPO finished"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    :cond_c
    const-string v11, "android.intent.action.black.mode"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 403
    const-string v11, "_black_mode"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 404
    .local v6, "mode":Z
    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    .line 405
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    # getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 407
    .end local v6    # "mode":Z
    :cond_d
    const-string v11, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 408
    const-string v11, "android.media.EXTRA_RINGER_MODE"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 409
    .local v8, "ringerMode":I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, "state":Ljava/lang/String;
    const-string v11, "persist.sys.mute.state"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
