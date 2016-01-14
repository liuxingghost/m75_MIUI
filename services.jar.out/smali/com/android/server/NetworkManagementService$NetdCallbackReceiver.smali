.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 487
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$102(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 496
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 500
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEvent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sparse-switch p1, :sswitch_data_0

    .line 613
    const/4 v6, 0x0

    :goto_0
    return v6

    .line 513
    :sswitch_0
    array-length v6, p3

    const/4 v7, 0x4

    if-lt v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v6, p3, v6

    const-string v7, "Iface"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 514
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid event from daemon (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 517
    :cond_1
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "added"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 518
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 519
    const/4 v6, 0x1

    goto :goto_0

    .line 520
    :cond_2
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "removed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 521
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 522
    const/4 v6, 0x1

    goto :goto_0

    .line 523
    :cond_3
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "changed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    array-length v6, p3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 524
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    const/4 v8, 0x4

    aget-object v8, p3, v8

    const-string v9, "up"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v6, v7, v8}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 525
    const/4 v6, 0x1

    goto :goto_0

    .line 526
    :cond_4
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "linkstate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    array-length v6, p3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 527
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    const/4 v8, 0x4

    aget-object v8, p3, v8

    const-string v9, "up"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v6, v7, v8}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 528
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 530
    :cond_5
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "IPv6state"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    array-length v6, p3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 531
    const-string v6, "NetworkManagementService"

    const-string v7, "IPv6state changed!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    const/4 v8, 0x4

    aget-object v8, p3, v8

    const-string v9, "up"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChangedIpv6(Ljava/lang/String;Z)V
    invoke-static {v6, v7, v8}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 533
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 538
    :cond_6
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "IPv6DNSUpdated"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    array-length v6, p3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 539
    const/4 v4, 0x0

    .line 541
    .local v4, "numOfAddress":I
    const-string v6, "NetworkManagementService"

    const-string v7, "IPv6DNSUpdated DNS changed!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v6, 0x4

    :try_start_0
    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 548
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDNSChangedIpv6(Ljava/lang/String;I)V
    invoke-static {v6, v7, v4}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;I)V

    .line 549
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "unexpected response"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 552
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "numOfAddress":I
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid event from daemon (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 560
    :sswitch_1
    array-length v6, p3

    const/4 v7, 0x5

    if-lt v6, v7, :cond_8

    const/4 v6, 0x1

    aget-object v6, p3, v6

    const-string v7, "limit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 561
    :cond_8
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid event from daemon (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 564
    :cond_9
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "alert"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 565
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    const/4 v8, 0x4

    aget-object v8, p3, v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 568
    :cond_a
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid event from daemon (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 576
    :sswitch_2
    array-length v6, p3

    const/4 v7, 0x4

    if-lt v6, v7, :cond_b

    const/4 v6, 0x1

    aget-object v6, p3, v6

    const-string v7, "IfaceClass"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 577
    :cond_b
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid event from daemon (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 580
    :cond_c
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "active"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 581
    .local v2, "isActive":Z
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(Ljava/lang/String;Z)V
    invoke-static {v6, v7, v2}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 582
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 590
    .end local v2    # "isActive":Z
    :sswitch_3
    const-string v6, "Invalid event from daemon (%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "msg":Ljava/lang/String;
    array-length v6, p3

    const/4 v7, 0x6

    if-lt v6, v7, :cond_d

    const/4 v6, 0x1

    aget-object v6, p3, v6

    const-string v7, "Address"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 592
    :cond_d
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 598
    :cond_e
    const/4 v6, 0x5

    :try_start_1
    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 599
    .local v1, "flags":I
    const/4 v6, 0x6

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 604
    .local v5, "scope":I
    const/4 v6, 0x2

    aget-object v6, p3, v6

    const-string v7, "updated"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 605
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    const/4 v8, 0x4

    aget-object v8, p3, v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v6, v7, v8, v1, v5}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 609
    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 600
    .end local v1    # "flags":I
    .end local v5    # "scope":I
    :catch_1
    move-exception v0

    .line 601
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 607
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "flags":I
    .restart local v5    # "scope":I
    :cond_f
    iget-object v6, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    const/4 v8, 0x4

    aget-object v8, p3, v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v6, v7, v8, v1, v5}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 502
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_2
        0x266 -> :sswitch_3
    .end sparse-switch
.end method
