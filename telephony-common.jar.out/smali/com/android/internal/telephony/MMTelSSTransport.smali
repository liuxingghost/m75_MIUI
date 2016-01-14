.class public final Lcom/android/internal/telephony/MMTelSSTransport;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field static final EVENT_RADIO_AVAILABLE:I = 0x4

.field static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field static final EVENT_RADIO_ON:I = 0x5

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field private static final INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSS"

.field static final MMTELSS_MAX_COMMAND_BYTES:I = 0x2000

.field static final MMTELSS_REQ_GET_CB:I = 0x7

.field static final MMTELSS_REQ_GET_CF:I = 0x9

.field static final MMTELSS_REQ_GET_CLIP:I = 0x3

.field static final MMTELSS_REQ_GET_CLIR:I = 0x2

.field static final MMTELSS_REQ_GET_COLP:I = 0x4

.field static final MMTELSS_REQ_GET_COLR:I = 0x5

.field static final MMTELSS_REQ_GET_CW:I = 0xb

.field static final MMTELSS_REQ_SET_CB:I = 0x6

.field static final MMTELSS_REQ_SET_CF:I = 0x8

.field static final MMTELSS_REQ_SET_CLIP:I = 0xc

.field static final MMTELSS_REQ_SET_CLIR:I = 0x1

.field static final MMTELSS_REQ_SET_COLP:I = 0xd

.field static final MMTELSS_REQ_SET_COLR:I = 0xe

.field static final MMTELSS_REQ_SET_CW:I = 0xa

.field static final RADIO_TEMPSTATE_AVAILABLE:I = 0x0

.field static final RADIO_TEMPSTATE_UNAVAILABLE:I = 0x1

.field private static final TEST_DOC:Ljava/lang/String; = "simservs"

.field private static final TEST_USER:Ljava/lang/String; = "sip:user@anritsu-cscf.com"

.field private static final XCAP_ROOT:Ljava/lang/String; = "http://192.168.1.2:8080/"

.field private static final mSimservs:Lcom/mediatek/simservs/client/SimServs;


# instance fields
.field mContext:Landroid/content/Context;

.field mDisableRuleMode:I

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMCC:Ljava/lang/String;

.field mMNC:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MMTelSSRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

.field mSenderThread:Landroid/os/HandlerThread;

.field mUserName:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field mXIntendedId:Ljava/lang/String;

.field mXcapRoot:Ljava/lang/String;

.field mXui:Ljava/lang/String;

.field private pm:Landroid/os/PowerManager;

.field private radioTemporarilyUnavailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {v0}, Lcom/android/internal/telephony/MMTelSSTransport;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 321
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 258
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mMCC:Ljava/lang/String;

    .line 259
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mMNC:Ljava/lang/String;

    .line 260
    const-string v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 261
    const-string v1, "http://192.168.1.2:8080/"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 262
    const-string v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 263
    const-string v1, "sip:user@anritsu-cscf.com"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 266
    const-string v1, "password"

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 267
    iput-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 312
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 316
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 330
    new-instance v1, Lcom/android/internal/telephony/MMTelSSTransport$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MMTelSSTransport$1;-><init>(Lcom/android/internal/telephony/MMTelSSTransport;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 369
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MMTelSSTransmitter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    .line 370
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 372
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;-><init>(Lcom/android/internal/telephony/MMTelSSTransport;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    .line 373
    return-void
.end method

.method static synthetic access$000()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/MMTelSSTransport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;

    .prologue
    .line 248
    iget v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;
    .param p1, "x1"    # I

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/MMTelSSTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MMTelSSTransport;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .prologue
    .line 2818
    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2819
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2820
    iget v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 2822
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 2823
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2824
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2825
    monitor-exit v2

    .line 2826
    return-void

    .line 2825
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .prologue
    .line 2850
    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2851
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2852
    .local v0, "count":I
    if-eqz p2, :cond_0

    .line 2853
    const-string v3, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[clearRequestsList]WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2859
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 2860
    .local v2, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    if-eqz p2, :cond_1

    .line 2861
    const-string v3, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 2865
    invoke-virtual {v2}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V

    .line 2858
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2867
    .end local v2    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2868
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    .line 2869
    monitor-exit v4

    .line 2870
    return-void

    .line 2869
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 2873
    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2874
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2875
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 2877
    .local v1, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget v3, v1, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    if-ne v3, p1, :cond_1

    .line 2878
    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2879
    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    if-lez v3, :cond_0

    .line 2880
    iget v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesWaiting:I

    .line 2881
    :cond_0
    monitor-exit v4

    .line 2886
    .end local v1    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :goto_1
    return-object v1

    .line 2874
    .restart local v1    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2884
    .end local v1    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    monitor-exit v4

    .line 2886
    const/4 v1, 0x0

    goto :goto_1

    .line 2884
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getInstance()Lcom/android/internal/telephony/MMTelSSTransport;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->INSTANCE:Lcom/android/internal/telephony/MMTelSSTransport;

    return-object v0
.end method

.method public static getSimServs()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private handleRadioAvailable()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "MMTelSS"

    const-string v1, "handleRadioAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 437
    return-void
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 429
    iput v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 430
    const-string v0, "MMTelSS"

    const-string v1, "handleRadioOffOrNotAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-direct {p0, v2, v2}, Lcom/android/internal/telephony/MMTelSSTransport;->clearRequestsList(IZ)V

    .line 432
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 2830
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2831
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 2837
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2839
    :cond_0
    monitor-exit v1

    .line 2840
    return-void

    .line 2839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 2891
    packed-switch p0, :pswitch_data_0

    .line 2903
    const-string v0, "UNKNOWN MMTELSS REQ"

    :goto_0
    return-object v0

    .line 2892
    :pswitch_0
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 2893
    :pswitch_1
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 2894
    :pswitch_2
    const-string v0, "GET_CLIP"

    goto :goto_0

    .line 2895
    :pswitch_3
    const-string v0, "GET_COLP"

    goto :goto_0

    .line 2896
    :pswitch_4
    const-string v0, "GET_COLR"

    goto :goto_0

    .line 2897
    :pswitch_5
    const-string v0, "SET_CW"

    goto :goto_0

    .line 2898
    :pswitch_6
    const-string v0, "GET_CW"

    goto :goto_0

    .line 2899
    :pswitch_7
    const-string v0, "SET_CB"

    goto :goto_0

    .line 2900
    :pswitch_8
    const-string v0, "GET_CB"

    goto :goto_0

    .line 2901
    :pswitch_9
    const-string v0, "SET_CF"

    goto :goto_0

    .line 2902
    :pswitch_a
    const-string v0, "GET_CF"

    goto :goto_0

    .line 2891
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private send(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2962
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mSender:Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2963
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->acquireWakeLock()V

    .line 2964
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2966
    return-void
.end method


# virtual methods
.method public dumpCBRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .locals 8
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;

    .prologue
    .line 2936
    const/4 v1, 0x0

    .line 2937
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 2939
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz p1, :cond_0

    .line 2940
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2941
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2942
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2957
    :cond_0
    :goto_0
    return-void

    .line 2947
    :cond_1
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump CB Rule: international="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",roaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v3

    .line 2949
    .local v3, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    .line 2950
    .local v4, "mediaTypeList":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2951
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2951
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2954
    :cond_2
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump CB Rule:mediaTypeList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .locals 9
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;

    .prologue
    .line 2911
    const/4 v1, 0x0

    .line 2912
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 2913
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v2, 0x0

    .line 2915
    .local v2, "forward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz p1, :cond_0

    .line 2916
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2917
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2918
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2933
    :cond_0
    :goto_0
    return-void

    .line 2923
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    .line 2924
    const-string v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump CF Rule:busy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noAns="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noReachable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",noRegistered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",forward_to_Target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isNotifyCaller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v4

    .line 2926
    .local v4, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, ""

    .line 2927
    .local v5, "mediaTypeList":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2928
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 2929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2928
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2931
    :cond_2
    const-string v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump CF Rule:mediaTypeList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2607
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2608
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2609
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2619
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2621
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2622
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2626
    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2628
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2629
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 416
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 418
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->handleRadioOffOrNotAvailable()V

    goto :goto_0

    .line 421
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/MMTelSSTransport;->handleRadioAvailable()V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2613
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2614
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2615
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 2776
    const/4 v0, 0x0

    .line 2778
    .local v0, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-ne p1, v9, :cond_0

    .line 2781
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    .end local v0    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    new-instance v1, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    const-string v2, "http://"

    const-string v3, "intendedId"

    const-string v4, "userName"

    const-string v5, "password"

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    .restart local v0    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v7

    .line 2783
    .local v7, "cfcond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2784
    const-string v1, "audio"

    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v6

    .line 2786
    .local v6, "cfaction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {v6, p3, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2787
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2791
    .end local v6    # "cfaction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v7    # "cfcond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_0
    const/16 v1, 0x9

    invoke-static {v1, p4}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v8

    .line 2793
    .local v8, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2794
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2795
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2797
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2798
    if-eqz p3, :cond_2

    .line 2799
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2805
    :goto_0
    if-ne p1, v9, :cond_1

    .line 2807
    iput-object v0, v8, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    .line 2810
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2812
    return-void

    .line 2801
    :cond_2
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2642
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2643
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2644
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2645
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 2710
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2711
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2712
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2713
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2714
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simID"    # I

    .prologue
    const/4 v4, 0x0

    .line 384
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_1

    .line 385
    iput-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 386
    const-string v1, "MMTelSS"

    const-string v2, "SIPPhone is not allowed to register for MMTelSS"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    if-eqz p3, :cond_2

    .line 392
    const-string v1, "MMTelSS"

    const-string v2, "Only support single SIM for MMTelSS currently"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 396
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPhone with instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iput-object p2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "MMTelSS"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 401
    const-string v1, "ro.ril.wake_lock_timeout"

    const/16 v2, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLockTimeout:I

    .line 404
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 2
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2599
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2601
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2602
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2603
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 2729
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    new-instance v1, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    const-string v2, "http://"

    const-string v3, "intendedId"

    const-string v4, "userName"

    const-string v5, "password"

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    .local v0, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v7

    .line 2731
    .local v7, "cfcond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v6

    .line 2735
    .local v6, "cfaction":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 2736
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2746
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    .line 2747
    const-string v1, "audio"

    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2754
    :cond_1
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v6, p4, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2757
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2759
    const/16 v1, 0x8

    invoke-static {v1, p6}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v8

    .line 2762
    .local v8, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2763
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2764
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2765
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2766
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    iput-object v0, v8, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    .line 2768
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2769
    return-void

    .line 2737
    .end local v8    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 2738
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_0

    .line 2739
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 2740
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_0

    .line 2741
    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 2742
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_0

    .line 2748
    :cond_5
    const/16 v1, 0x200

    if-ne p3, v1, :cond_1

    .line 2749
    const-string v1, "video"

    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 2634
    const/16 v2, 0xa

    invoke-static {v2, p3}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v0

    .line 2635
    .local v0, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2638
    return-void

    .line 2635
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 2656
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    new-instance v1, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    const-string v2, "http://"

    const-string v3, "intendedId"

    const-string v4, "userName"

    const-string v5, "password"

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    .local v0, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v7

    .line 2658
    .local v7, "cbcond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v6

    .line 2668
    .local v6, "cbaction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v1, "OI"

    if-ne p1, v1, :cond_2

    .line 2671
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2681
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-ne p4, v1, :cond_4

    .line 2682
    const-string v1, "audio"

    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2687
    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 2689
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2695
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCBRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2697
    const/4 v1, 0x6

    invoke-static {v1, p5}, Lcom/android/internal/telephony/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v8

    .line 2698
    .local v8, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2699
    iget-object v2, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2700
    iget-object v1, v8, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2701
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->send(Lcom/android/internal/telephony/MMTelSSRequest;)V

    .line 2702
    return-void

    .line 2672
    .end local v8    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_2
    const-string v1, "OX"

    if-ne p1, v1, :cond_3

    .line 2675
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    goto :goto_0

    .line 2676
    :cond_3
    const-string v1, "IR"

    if-ne p1, v1, :cond_0

    .line 2678
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    goto :goto_0

    .line 2683
    :cond_4
    const/16 v1, 0x200

    if-ne p4, v1, :cond_1

    .line 2684
    const-string v1, "video"

    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1

    .line 2692
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_2

    .line 2699
    .restart local v8    # "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "XUI"    # Ljava/lang/String;
    .param p2, "XcapRoot"    # Ljava/lang/String;
    .param p3, "IntendedId"    # Ljava/lang/String;
    .param p4, "UserName"    # Ljava/lang/String;
    .param p5, "Password"    # Ljava/lang/String;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 441
    iput-object p2, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 442
    iput-object p3, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 443
    iput-object p4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 444
    iput-object p5, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 445
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    .line 446
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p2}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    .line 447
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p3}, Lcom/mediatek/simservs/client/SimServs;->setIntendedId(Ljava/lang/String;)V

    .line 450
    const-string v1, "ril.ss.tcname"

    const-string v2, "Empty"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "tc_name":Ljava/lang/String;
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSimservsInitParameters():tc_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", passed UserName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-eqz v0, :cond_0

    const-string v1, "Single_TC_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    move-object p4, v0

    .line 454
    iput-object p4, p0, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 459
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v1, p4, p5}, Lcom/mediatek/simservs/client/SimServs;->setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method
