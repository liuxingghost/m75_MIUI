.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final IS_ENG_BUILD:Z

.field private static final MESSAGE_DUMP_SIZE_MAX:I = 0x14


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/MessageQueue;->IS_ENG_BUILD:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 108
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 109
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()I

    move-result v0

    iput v0, p0, Landroid/os/MessageQueue;->mPtr:I

    .line 110
    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v0}, Landroid/os/MessageQueue;->nativeDestroy(I)V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageQueue;->mPtr:I

    .line 128
    :cond_0
    return-void
.end method

.method private isIdlingLocked()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v0}, Landroid/os/MessageQueue;->nativeIsIdling(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeIsIdling(I)Z
.end method

.method private static native nativePollOnce(II)V
.end method

.method private static native nativeWake(I)V
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .prologue
    .line 545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 546
    .local v1, "now":J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 547
    .local v3, "p":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 548
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_2

    .line 549
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 560
    .local v0, "n":Landroid/os/Message;
    :cond_1
    move-object v3, v0

    .line 553
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 554
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 557
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    .line 562
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 564
    :cond_3
    move-object v3, v0

    .line 565
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 566
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 567
    if-nez v0, :cond_3

    goto :goto_0
.end method

.method private removeAllMessagesLocked()V
    .locals 3

    .prologue
    .line 535
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 536
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    .line 537
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 538
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 539
    move-object v1, v0

    .line 540
    goto :goto_0

    .line 541
    .end local v0    # "n":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 542
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 573
    monitor-enter p0

    .line 574
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 575
    .local v2, "now":J
    const/4 v1, 0x0

    .line 576
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 578
    add-int/lit8 v1, v1, 0x1

    .line 576
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 580
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 582
    monitor-exit p0

    .line 583
    return-void

    .line 582
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final declared-synchronized dumpMessageQueue()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x14

    .line 594
    monitor-enter p0

    :try_start_0
    const-string v1, ""

    .line 595
    .local v1, "messageQueue":Ljava/lang/String;
    iget-object v4, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 597
    const-string v4, "MessageQueue"

    const-string v5, "Dump first 20 messages in Queue: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Dump first "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messages in Queue: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 599
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    .local v3, "tempMsg":Landroid/os/Message;
    const/4 v0, 0x0

    .line 602
    .local v0, "count":I
    :goto_0
    if-eqz v3, :cond_1

    .line 604
    add-int/lit8 v0, v0, 0x1

    .line 606
    if-gt v0, v7, :cond_0

    .line 610
    :try_start_1
    const-string v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump Message in Queue ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Dump Message in Queue ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 619
    :cond_0
    :goto_1
    :try_start_2
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 613
    :catch_0
    move-exception v2

    .line 615
    .local v2, "re":Ljava/lang/RuntimeException;
    const-string v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump Message in Queue ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): RuntimeException occurred. Ignore this message dump."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 594
    .end local v0    # "count":I
    .end local v1    # "messageQueue":Ljava/lang/String;
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .end local v3    # "tempMsg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 622
    .restart local v0    # "count":I
    .restart local v1    # "messageQueue":Ljava/lang/String;
    .restart local v3    # "tempMsg":Landroid/os/Message;
    :cond_1
    :try_start_3
    const-string v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Message Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Total Message Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 633
    .end local v0    # "count":I
    .end local v3    # "tempMsg":Landroid/os/Message;
    :goto_2
    monitor-exit p0

    return-object v1

    .line 630
    :cond_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mMessages is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    const-string v4, "MessageQueue"

    const-string/jumbo v5, "mMessages is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    new-instance v5, Landroid/util/AndroidRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " This message is already in use."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    :cond_0
    iget-object v6, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v6, :cond_1

    .line 317
    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v6, "Message must have a target."

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :cond_1
    iget-boolean v6, p1, Landroid/os/Message;->hasRecycle:Z

    if-eqz v6, :cond_2

    .line 322
    const-string v5, "MessageQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning: message has been recycled. msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return v1

    .line 327
    :cond_2
    monitor-enter p0

    .line 328
    :try_start_0
    iget-boolean v6, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v6, :cond_3

    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sending message to a Handler on a dead thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    monitor-exit p0

    goto :goto_0

    .line 383
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 336
    :cond_3
    :try_start_1
    sget-boolean v6, Landroid/os/MessageQueue;->IS_ENG_BUILD:Z

    if-eqz v6, :cond_5

    .line 338
    iget-object v4, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 339
    .local v4, "tempP":Landroid/os/Message;
    :goto_1
    if-eqz v4, :cond_5

    .line 341
    if-ne v4, p1, :cond_4

    .line 343
    const-string v5, "MessageQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning: Sending the same message instance! Ignored. msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit p0

    goto :goto_0

    .line 347
    :cond_4
    iget-object v4, v4, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 351
    .end local v4    # "tempP":Landroid/os/Message;
    :cond_5
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 352
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 354
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-eqz v6, :cond_6

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_8

    .line 356
    :cond_6
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 357
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 358
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 380
    .local v1, "needWake":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 381
    iget v6, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v6}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 383
    :cond_7
    monitor-exit p0

    move v1, v5

    .line 384
    goto :goto_0

    .line 363
    .end local v1    # "needWake":Z
    :cond_8
    iget-boolean v6, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v6, :cond_9

    iget-object v6, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v6, :cond_9

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v6

    if-eqz v6, :cond_9

    move v1, v5

    .line 366
    .restart local v1    # "needWake":Z
    :cond_9
    :goto_3
    move-object v3, v2

    .line 367
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 368
    if-eqz v2, :cond_a

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v6, p2, v6

    if-gez v6, :cond_b

    .line 375
    :cond_a
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 376
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 371
    :cond_b
    if-eqz v1, :cond_9

    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_9

    .line 372
    const/4 v1, 0x0

    goto :goto_3
.end method

.method enqueueSyncBarrier(J)I
    .locals 6
    .param p1, "when"    # J

    .prologue
    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 257
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 258
    .local v0, "msg":Landroid/os/Message;
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 259
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 263
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 264
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 265
    move-object v2, v1

    .line 266
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 269
    :cond_0
    if-eqz v2, :cond_1

    .line 270
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 271
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 276
    :goto_1
    monitor-exit p0

    return v3

    .line 273
    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 274
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .line 277
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 388
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return v1

    .line 392
    :cond_0
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 394
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 395
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 396
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 401
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 398
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 400
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 405
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return v1

    .line 409
    :cond_0
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 411
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 412
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 413
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 418
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 415
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 417
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method isIdling()Z
    .locals 1

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isIdlingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 14

    .prologue
    .line 131
    const/4 v7, -0x1

    .line 132
    .local v7, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    .line 134
    .local v4, "nextPollTimeoutMillis":I
    :goto_0
    if-eqz v4, :cond_0

    .line 135
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 140
    :cond_0
    iget v10, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v10, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 142
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 145
    .local v5, "now":J
    const/4 v8, 0x0

    .line 146
    .local v8, "prevMsg":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 147
    .local v3, "msg":Landroid/os/Message;
    if-eqz v3, :cond_2

    iget-object v10, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_2

    .line 150
    :cond_1
    move-object v8, v3

    .line 151
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 152
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 154
    :cond_2
    if-eqz v3, :cond_5

    .line 155
    iget-wide v10, v3, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_3

    .line 157
    iget-wide v10, v3, Landroid/os/Message;->when:J

    sub-long/2addr v10, v5

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    .line 177
    :goto_1
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_6

    .line 178
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 179
    const/4 v3, 0x0

    monitor-exit p0

    .end local v3    # "msg":Landroid/os/Message;
    :goto_2
    return-object v3

    .line 160
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 161
    if-eqz v8, :cond_4

    .line 162
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 166
    :goto_3
    const/4 v10, 0x0

    iput-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 168
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 169
    monitor-exit p0

    goto :goto_2

    .line 199
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "now":J
    .end local v8    # "prevMsg":Landroid/os/Message;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 164
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v5    # "now":J
    .restart local v8    # "prevMsg":Landroid/os/Message;
    :cond_4
    :try_start_1
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_3

    .line 173
    :cond_5
    const/4 v4, -0x1

    goto :goto_1

    .line 185
    :cond_6
    if-gez v7, :cond_8

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_8

    .line 187
    :cond_7
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 189
    :cond_8
    if-gtz v7, :cond_9

    .line 191
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 192
    monitor-exit p0

    goto :goto_0

    .line 195
    :cond_9
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v10, :cond_a

    .line 196
    const/4 v10, 0x4

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 198
    :cond_a
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 199
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v7, :cond_c

    .line 204
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v10, v0

    .line 205
    .local v1, "idler":Landroid/os/MessageQueue$IdleHandler;
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v11, 0x0

    aput-object v11, v10, v0

    .line 207
    const/4 v2, 0x0

    .line 209
    .local v2, "keep":Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 214
    :goto_5
    if-nez v2, :cond_b

    .line 215
    monitor-enter p0

    .line 216
    :try_start_3
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 210
    :catch_0
    move-exception v9

    .line 211
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "MessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 217
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 222
    .end local v1    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v2    # "keep":Z
    :cond_c
    const/4 v7, 0x0

    .line 226
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .prologue
    .line 231
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_1

    .line 237
    monitor-exit p0

    .line 250
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 241
    if-eqz p1, :cond_2

    .line 242
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 248
    :goto_1
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v0}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 249
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 244
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 506
    :cond_0
    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 511
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 512
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 513
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 514
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 515
    move-object v2, v0

    .line 516
    goto :goto_1

    .line 519
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 520
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 521
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 522
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 523
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 524
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 525
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 531
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 529
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 530
    goto :goto_2

    .line 531
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 438
    :cond_0
    monitor-enter p0

    .line 439
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 443
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 444
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 445
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 446
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 447
    move-object v2, v0

    .line 448
    goto :goto_1

    .line 451
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 452
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 453
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 454
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 456
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 457
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 458
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 464
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 462
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 463
    goto :goto_2

    .line 464
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    monitor-enter p0

    .line 473
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 477
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 478
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 479
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 480
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 481
    move-object v2, v0

    .line 482
    goto :goto_1

    .line 485
    .end local v0    # "n":Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 486
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 487
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 488
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 490
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 491
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 492
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 498
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 496
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_5
    move-object v2, v0

    .line 497
    goto :goto_2

    .line 498
    .end local v0    # "n":Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method removeSyncBarrier(I)V
    .locals 5
    .param p1, "token"    # I

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 286
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 287
    :cond_0
    move-object v2, v1

    .line 288
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 290
    :cond_1
    if-nez v1, :cond_2

    .line 291
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 295
    .restart local v1    # "p":Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 296
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 297
    const/4 v0, 0x0

    .line 302
    .local v0, "needWake":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 306
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_3

    .line 307
    iget v3, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-static {v3}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 309
    :cond_3
    monitor-exit p0

    .line 310
    return-void

    .line 299
    .end local v0    # "needWake":Z
    :cond_4
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 300
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    :goto_2
    goto :goto_1

    .end local v0    # "needWake":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
