.class public final Lcom/android/server/am/ANRManager;
.super Landroid/app/ANRManagerNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ANRManager$BinderDumpThread;,
        Lcom/android/server/am/ANRManager$KeyAnrRecord;,
        Lcom/android/server/am/ANRManager$AnrDumpMgr;,
        Lcom/android/server/am/ANRManager$DumpThread;,
        Lcom/android/server/am/ANRManager$AnrDumpRecord;,
        Lcom/android/server/am/ANRManager$BinderWatchdog;,
        Lcom/android/server/am/ANRManager$AnrMonitorHandler;
    }
.end annotation


# static fields
.field public static AnrOption:I = 0x0

.field public static final DISABLE_ALL_ANR_MECHANISM:I = 0x0

.field public static final DISABLE_PARTIAL_ANR_MECHANISM:I = 0x1

.field public static final ENABLE_ALL_ANR_MECHANISM:I = 0x2

.field protected static final INPUT_EVENT_ANR_DUMP:I = 0x3ee

.field protected static final MAX_MTK_TRACE_COUNT:I = 0xa

.field private static NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field protected static final REMOVE_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ed

.field protected static final SIGNAL_STKFLT:I = 0x10

.field protected static final START_ANR_DUMP_MSG:I = 0x3eb

.field protected static final START_MONITOR_BROADCAST_TIMEOUT_MSG:I = 0x3e9

.field protected static final START_MONITOR_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ec

.field protected static final START_MONITOR_SERVICE_TIMEOUT_MSG:I = 0x3ea

.field protected static final UPDATE_CPU_USAGE:I = 0x3ef

.field protected static additionNBTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/android/server/am/ActivityManagerService;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field private static final e:Lcom/android/internal/os/ProcessCpuTracker;

.field private static g:Lcom/android/server/am/ANRManager;

.field public static mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final f:Ljava/util/concurrent/atomic/AtomicLong;

.field protected mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

.field protected mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 109
    sput v1, Lcom/android/server/am/ANRManager;->AnrOption:I

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->c:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->d:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    sput-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    .line 122
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "/system/bin/mediaserver"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/app/ANRManagerNative;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/app/ANRManagerNative;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 150
    sput-object p1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    .line 152
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/app/ANRAppManager;->getDefault()Landroid/app/ANRAppManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ANRAppManager;->newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 156
    :cond_0
    return-void
.end method

.method static synthetic a()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private final a(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 246
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const-string v0, "5"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enablemlog(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 260
    if-eq p1, v3, :cond_2

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_2
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_3
    if-eq p1, v3, :cond_6

    .line 268
    invoke-static {p1, p1}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 271
    if-eqz v0, :cond_4

    .line 272
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    if-eq v0, p1, :cond_4

    sget-object v4, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v4, :cond_4

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_5
    invoke-static {p1, v1, v6}, Lcom/android/server/am/ANRManager$BinderWatchdog;->b(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 284
    :cond_6
    sget-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_7

    .line 286
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 287
    const-string v3, "ANRManager"

    invoke-virtual {v0, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 289
    :cond_7
    sget-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0xc8

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 293
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v3, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preDumpStackTraces Begin tracePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ANRManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 302
    const-string v0, "ANRManager"

    const-string v1, "preDumpStackTraces End"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/server/am/ANRManager;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager;->a(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v2, Lcom/android/server/am/ANRManager$1;

    const/16 v0, 0x8

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/ANRManager$1;-><init>(Ljava/lang/String;I)V

    .line 315
    :try_start_0
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    if-eqz p1, :cond_1

    .line 320
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 321
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 322
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preDumpStackTraces process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v6}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v4, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    const/16 v4, 0x10

    invoke-static {v0, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 333
    :goto_1
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 334
    monitor-exit v2

    .line 321
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {v0, p0}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    :try_start_4
    const-string v1, "ANRManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 341
    :cond_1
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 343
    const/4 v0, 0x1

    const-string v1, "/data/anr/mtk_traces.txt"

    const-string v2, "/data/anr/mtk_traces_"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 344
    return-void

    .line 341
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    throw v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-object v0
.end method

.method public static enableANRDebuggingMechanism()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1334
    sget v1, Lcom/android/server/am/ANRManager;->AnrOption:I

    packed-switch v1, :pswitch_data_0

    .line 1342
    :goto_0
    :pswitch_0
    return v0

    .line 1338
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1340
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extendANRTime(IJ)J
    .locals 8

    .prologue
    .line 1306
    const-wide/16 v1, 0x0

    .line 1309
    const-string v0, "mobile"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1310
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v0

    .line 1312
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->getUserConfirmTime(IJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1313
    :try_start_1
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserConfirmTime() userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anrTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extendTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1319
    :goto_0
    return-wide v0

    .line 1315
    :catch_0
    move-exception v0

    move-object v5, v0

    move-wide v6, v1

    move-wide v0, v6

    move-object v2, v5

    .line 1316
    :goto_1
    const-string v3, "ANRManager"

    const-string v4, "getUserConfirmTime() failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1315
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getDefault(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ANRManager;
    .locals 1

    .prologue
    .line 143
    sput-object p0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    .line 144
    sget-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/server/am/ANRManager;

    invoke-direct {v0}, Lcom/android/server/am/ANRManager;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    .line 146
    :cond_0
    sget-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    return-object v0
.end method

.method public static renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    .line 693
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameFiles Begin, clearTraces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subnativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 698
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 699
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 701
    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    sget-object v2, Lcom/android/server/am/ANRManager;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    const/16 v1, 0x8

    :goto_0
    if-lez v1, :cond_2

    .line 706
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 708
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 705
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 712
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 714
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 718
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 724
    const-string v1, "ANRManager"

    const-string v2, "renameFiles End"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_1
    return-object v0

    .line 714
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare ANR traces file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public IsProcDoCoredump(I)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1210
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 1211
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;

    if-eqz v0, :cond_1

    .line 1213
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;

    invoke-interface {v0, v2}, Lcom/mediatek/common/aee/IExceptionLog;->getNativeExceptionPidList([I)Z

    .line 1214
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 1216
    if-ne v4, p1, :cond_0

    if-lez v4, :cond_0

    .line 1218
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[coredump] Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is doing coredump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1227
    :goto_1
    return-object v0

    .line 1223
    :cond_0
    const-string v5, "ANRManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[coredump] coredump\'s pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public checkNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1273
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_0
    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1357
    .line 1359
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    :goto_0
    return v1

    .line 1362
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1363
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 1364
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1367
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ANRManager;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1371
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    move v1, v0

    .line 1377
    goto :goto_0

    .line 1371
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    const-string v0, "ANRManager"

    const-string v2, "createFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1375
    goto :goto_1
.end method

.method public copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1382
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    .line 1386
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1387
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1390
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1392
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1396
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    const-string v0, "ANRManager"

    const-string v2, "copyToFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1401
    :goto_2
    return v0

    .line 1390
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1392
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1396
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 1393
    :catch_1
    move-exception v3

    .line 1394
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1393
    :catch_2
    move-exception v3

    .line 1394
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1
.end method

.method public createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 1349
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1350
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1351
    :cond_0
    const-string v0, "ANRManager"

    const-string v1, "file isn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v0, 0x0

    .line 1354
    :cond_1
    return-object v0
.end method

.method public dumpBinderInfo(I)V
    .locals 5

    .prologue
    .line 1429
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/binderinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1432
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1433
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1436
    :cond_0
    const-string v1, "/sys/kernel/debug/binder/failed_transaction_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1437
    if-eqz v1, :cond_1

    .line 1438
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER FAILED TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1442
    :cond_1
    const-string v1, "sys/kernel/debug/binder/timeout_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1443
    if-eqz v1, :cond_2

    .line 1444
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TIMEOUT LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1448
    :cond_2
    const-string v1, "/sys/kernel/debug/binder/transaction_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1449
    if-eqz v1, :cond_3

    .line 1450
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1454
    :cond_3
    const-string v1, "/sys/kernel/debug/binder/transactions"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1455
    if-eqz v1, :cond_4

    .line 1456
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTIONS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1460
    :cond_4
    const-string v1, "/sys/kernel/debug/binder/stats"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1461
    if-eqz v1, :cond_5

    .line 1462
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER STATS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1466
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1467
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1469
    if-eqz v2, :cond_6

    .line 1470
    const-string v1, "/data/anr/binderinfo"

    const-string v3, "------ BINDER PROCESS STATE: $i ------\n"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :cond_6
    :goto_0
    return-void

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableZramMonitor(Z)V
    .locals 3

    .prologue
    .line 1481
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableZramMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :try_start_0
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "/sys/module/mlog/parameters/timer_intval"

    if-eqz p1, :cond_0

    const-string v0, "100"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :goto_1
    return-void

    .line 1483
    :cond_0
    const-string v0, "6000"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    const-string v1, "ANRManager"

    const-string v2, "Error happens enableZramMonitor"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public enablemlog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1490
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablemlog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :try_start_0
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "/sys/module/mlog/parameters/do_mlog"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    const-string v1, "ANRManager"

    const-string v2, "Error happens enablemlog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAndroidTime()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1048
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1049
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1050
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android time :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1033
    sget-object v1, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1037
    :try_start_0
    const-string v0, "ANRManager"

    const-string v2, "getProcessState"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    .line 1042
    :goto_0
    return-object v0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessState error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1292
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    sget-object v1, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    :goto_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informMessageDump pid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void

    .line 1298
    :cond_0
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public notifyKeyANR(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1059
    .line 1060
    new-instance v0, Lcom/android/server/am/ANRManager$KeyAnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ANRManager$KeyAnrRecord;-><init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1061
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1062
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1063
    return-void
.end method

.method public notifyLightWeightANR(ILjava/lang/String;I)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1388

    const/16 v1, 0x3ef

    const/16 v4, 0x3ec

    .line 1156
    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    packed-switch p3, :pswitch_data_0

    .line 1174
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1193
    :cond_1
    :goto_1
    return-void

    .line 1160
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1161
    iget-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1164
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_0

    .line 1177
    :cond_2
    packed-switch p3, :pswitch_data_1

    .line 1189
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager;->a(I)V

    goto :goto_1

    .line 1180
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, p1, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1185
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_1

    .line 1157
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1177
    :pswitch_data_1
    .packed-switch 0x3ec
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyWNR(ILjava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1082
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWNR pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual {p0, v3}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1086
    if-gtz p1, :cond_0

    .line 1087
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping WNR due to invalid pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {p0, v4}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    move v0, v3

    .line 1149
    :goto_0
    return v0

    .line 1094
    :cond_0
    sget-object v7, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1095
    :try_start_0
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v5

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1097
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v6, v3

    .line 1098
    :goto_2
    if-ge v6, v9, :cond_8

    .line 1099
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1100
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_1

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v10, p1, :cond_1

    :goto_3
    move-object v2, v1

    .line 1105
    goto :goto_1

    .line 1098
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 1107
    :cond_2
    if-nez v2, :cond_3

    .line 1108
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping WNR due to null process record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1111
    monitor-exit v7

    move v0, v3

    goto :goto_0

    .line 1114
    :cond_3
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v0, :cond_4

    .line 1115
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping WNR due to debugging: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1119
    monitor-exit v7

    move v0, v3

    goto :goto_0

    .line 1121
    :cond_4
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v10, 0x1f40

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1122
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping WNR due to DidDexOpt: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1127
    monitor-exit v7

    move v0, v3

    goto/16 :goto_0

    .line 1132
    :cond_5
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    .line 1142
    :goto_4
    if-eqz v2, :cond_7

    .line 1145
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/am/ANRManager;->notifyKeyANR(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1147
    monitor-exit v7

    move v0, v4

    goto/16 :goto_0

    .line 1135
    :cond_6
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping WNR due to instrumentation: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1137
    const-string v1, "shortMsg"

    const-string v6, "keyDispatchingTimedOut"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v1, "longMsg"

    const-string v6, "Timed out while dispatching key event"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/am/ActivityManagerService;->finishInstrumentationLocked(Lcom/android/server/am/ProcessRecord;ILandroid/os/Bundle;)V

    move-object v2, v5

    goto :goto_4

    .line 1149
    :cond_7
    monitor-exit v7

    move v0, v3

    goto/16 :goto_0

    .line 1150
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    move-object v1, v2

    goto/16 :goto_3
.end method

.method public prepareStackTraceFile(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 621
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareStackTraceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 630
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 631
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 634
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 636
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 637
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 639
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b6

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare stack trace file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerDumpNBTReceiver()V
    .locals 3

    .prologue
    .line 1234
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1235
    const-string v1, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1236
    const-string v1, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1237
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ANRManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ANRManager$2;-><init>(Lcom/android/server/am/ANRManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1269
    return-void
.end method

.method public removeNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1282
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1285
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    return-void
.end method

.method public skipANR(I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1204
    return-object v0
.end method

.method public startANRManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnrMonitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v1, Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;-><init>(Lcom/android/server/am/ANRManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    .line 163
    new-instance v0, Lcom/android/server/am/ANRManager$AnrDumpMgr;

    invoke-direct {v0, p0}, Lcom/android/server/am/ANRManager$AnrDumpMgr;-><init>(Lcom/android/server/am/ANRManager;)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

    .line 167
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 169
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 170
    const-string v0, "dalvik.vm.stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 171
    const-string v0, "data/anr/native1.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 172
    const-string v0, "data/anr/native2.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 173
    const-string v0, "data/anr/native3.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1406
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1408
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 1412
    return-void

    .line 1410
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public updateProcessStats()V
    .locals 8

    .prologue
    .line 1009
    sget-object v1, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1012
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1015
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x9c4

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1017
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1018
    const-string v0, "ANRManager"

    const-string v2, "updateProcessStats"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1029
    return-void

    .line 1021
    :cond_0
    :try_start_3
    const-string v0, "ANRManager"

    const-string v2, "CPU update time < 2.5sec"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    :try_start_4
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessStats error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
