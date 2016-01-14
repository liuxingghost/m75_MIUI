.class public Lcom/android/internal/telephony/ImsAdapter;
.super Landroid/content/BroadcastReceiver;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsAdapter$1;,
        Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;,
        Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;,
        Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    }
.end annotation


# static fields
.field private static final SOCKET_NAME1:Ljava/lang/String; = "volte_imsa1"

.field private static final SOCKET_NAME2:Ljava/lang/String; = "volte_imsa2"

.field private static final TAG:Ljava/lang/String; = "ImsAdapter"

.field private static mImsEventDispatcher:Lcom/android/internal/telephony/ImsEventDispatcher;

.field private static mInstance:Lcom/android/internal/telephony/ImsAdapter;

.field private static misImsAdapterEnabled:Z

.field private static misImsAdapterInit:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 373
    sput-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    .line 374
    sput-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterInit:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 376
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 421
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mHandler:Landroid/os/Handler;

    .line 378
    iput-object p1, p0, Lcom/android/internal/telephony/ImsAdapter;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 379
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mContext:Landroid/content/Context;

    .line 381
    sget-object v1, Lcom/android/internal/telephony/ImsAdapter;->mInstance:Lcom/android/internal/telephony/ImsAdapter;

    if-nez v1, :cond_0

    .line 382
    sput-object p0, Lcom/android/internal/telephony/ImsAdapter;->mInstance:Lcom/android/internal/telephony/ImsAdapter;

    .line 385
    :cond_0
    const-string v1, "ImsAdapter"

    const-string v2, "ImsAdapter(): ImsAdapter Enter"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v1, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    const-string v2, "volte_imsa1"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 388
    new-instance v1, Lcom/android/internal/telephony/ImsEventDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ImsAdapter;->mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/ImsEventDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V

    sput-object v1, Lcom/android/internal/telephony/ImsAdapter;->mImsEventDispatcher:Lcom/android/internal/telephony/ImsEventDispatcher;

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLEAR_DATA_BEARER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->start()V

    .line 396
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 28
    sput-boolean p0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    return p0
.end method

.method static synthetic access$100()Lcom/android/internal/telephony/ImsEventDispatcher;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/ImsAdapter;->mImsEventDispatcher:Lcom/android/internal/telephony/ImsEventDispatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ImsAdapter;)Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 28
    sput-boolean p0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterInit:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ImsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsAdapter;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter;->stopVaProcess()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ImsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsAdapter;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter;->enableImsAdapter2ndStage()V

    return-void
.end method

.method private enableImsAdapter2ndStage()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 448
    const-string v0, "ImsAdapter"

    const-string v1, "enableImsAdapter2ndStage()Enter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v0, "ctl.start"

    const-string v1, "volte_stack"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "ctl.start"

    const-string v1, "volte_ua"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "ctl.start"

    const-string v1, "volte_imcb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "ImsAdapter"

    const-string v1, "enableImsAdapter2ndStage(): Va process started!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iput-object v2, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    .line 460
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;-><init>(Lcom/android/internal/telephony/ImsAdapter;Lcom/android/internal/telephony/ImsAdapter$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ImsAdapter;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/android/internal/telephony/ImsAdapter;->mInstance:Lcom/android/internal/telephony/ImsAdapter;

    return-object v0
.end method

.method private stopVaProcess()V
    .locals 2

    .prologue
    .line 485
    const-string v0, "ImsAdapter"

    const-string v1, "stopVaProcess"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v0, "ctl.stop"

    const-string v1, "volte_stack"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "ctl.stop"

    const-string v1, "volte_ua"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "ctl.stop"

    const-string v1, "volte_imcb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method


# virtual methods
.method public disableImsAdapter(Z)V
    .locals 3
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 466
    const-string v0, "ImsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableImsAdapter(): misImsAdapterEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isNormalDisable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    if-eqz v0, :cond_1

    .line 469
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mEnableImsRunnable:Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;

    .line 476
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ImsAdapter;->mImsEventDispatcher:Lcom/android/internal/telephony/ImsEventDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsEventDispatcher;->disableRequest()V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter;->stopVaProcess()V

    .line 482
    :cond_1
    return-void
.end method

.method public enableImsAdapter()V
    .locals 3

    .prologue
    .line 403
    const-string v0, "ImsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableImsAdapter: misImsAdapterEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterInit:Z

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterInit:Z

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter;->stopVaProcess()V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearDataBearer()V

    .line 414
    :cond_0
    return-void
.end method

.method public getImsAdapterEnable()Z
    .locals 1

    .prologue
    .line 417
    sget-boolean v0, Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ImsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, intent action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v1, "android.intent.action.CLEAR_DATA_BEARER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsAdapter;->enableImsAdapter2ndStage()V

    .line 509
    :cond_0
    return-void
.end method

.method public sendTestEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 498
    sget-object v0, Lcom/android/internal/telephony/ImsAdapter;->mImsEventDispatcher:Lcom/android/internal/telephony/ImsEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsEventDispatcher;->dispatchCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 499
    return-void
.end method
