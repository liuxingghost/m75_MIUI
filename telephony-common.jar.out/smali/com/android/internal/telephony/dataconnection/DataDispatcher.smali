.class public Lcom/android/internal/telephony/dataconnection/DataDispatcher;
.super Ljava/lang/Object;
.source "DataDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataDispatcher$3;,
        Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;,
        Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    }
.end annotation


# static fields
.field private static final DUMP_TRANSACTION:Z = true

.field private static EMERGENCY_APN:Ljava/lang/String; = null

.field private static final IMC_CONCATENATED_MSG_TYPE_ACTIVATION:I = 0x1

.field private static final IMC_CONCATENATED_MSG_TYPE_MODIFICATION:I = 0x2

.field private static final IMC_CONCATENATED_MSG_TYPE_NONE:I = 0x0

.field private static IMS_APN:Ljava/lang/String; = null

.field private static final INVALID_CID:I = -0x1

.field private static final MSG_ON_DEDICATE_CONNECTION_STATE_CHANGED:I = 0xfa0

.field private static final MSG_ON_DEFAULT_BEARER_CONNECTION_CHANGED:I = 0x1770

.field private static final MSG_ON_DEFAULT_BEARER_CONNECTION_FAILED:I = 0x17d4

.field private static final MSG_ON_NOTIFY_GLOBAL_IP_ADDR:I = 0x1b58

.field private static final MSG_PCSCF_DISCOVERY_PCO_DONE:I = 0x1388

.field private static final PDP_ADDR_MASK_IPV4:I = 0x1

.field private static final PDP_ADDR_MASK_IPV4v6:I = 0x3

.field private static final PDP_ADDR_MASK_IPV6:I = 0x2

.field private static final PDP_ADDR_MASK_NONE:I = 0x0

.field private static final PDP_ADDR_TYPE_IPV4:I = 0x21

.field private static final PDP_ADDR_TYPE_IPV4v6:I = 0x8d

.field private static final PDP_ADDR_TYPE_IPV6:I = 0x57

.field private static final PDP_ADDR_TYPE_NONE:I = 0x0

.field private static final PDP_ADDR_TYPE_NULL:I = 0x3

.field public static final PROPERTY_MANUAL_PCSCF_ADDRESS:Ljava/lang/String; = "ril.pcscf.addr"

.field public static final PROPERTY_MANUAL_PCSCF_PORT:Ljava/lang/String; = "ril.pcscf.port"

.field private static final SIZE_DEFAULT_BEARER_RESPONSE:I = 0x9470

.field private static final SIZE_NOTIFY_DEDICATE_BEARER_ACTIVATED:I = 0x5000

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static mInstance:Lcom/android/internal/telephony/dataconnection/DataDispatcher;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

.field private mEmergencyCid:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field private mIsBroadcastReceiverRegistered:Z

.field private mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

.field private mTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "ims"

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    .line 61
    const-string v0, "emergency"

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    .line 107
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataDispatcher created and use apn type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] as IMS APN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    .line 234
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 235
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    .line 236
    sput-object p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mInstance:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p3, "x3"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .param p4, "x4"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->onNotifyGlobalIpAddr(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isMsgAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleBearerDeactivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerModificationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDefaultBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method private delayForSeconds(I)V
    .locals 3
    .param p1, "seconds"    # I

    .prologue
    .line 1519
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    :goto_0
    return-void

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DataDispatcher;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mInstance:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    return-object v0
.end method

.method private handleBearerDeactivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->extractPdnDeactInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;

    move-result-object v0

    .line 485
    .local v0, "pdnDeactInd":Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->isDedicateBearer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V

    .line 493
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-nez v1, :cond_1

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDedicateBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handleDefaultBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V

    goto :goto_0
.end method

.method private handleDedicateBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 459
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 460
    .local v6, "transactionId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    .line 461
    .local v2, "primaryCid":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v4, 0x1

    .line 462
    .local v4, "signalingFlag":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 463
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v3

    .line 464
    .local v3, "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;

    move-result-object v5

    .line 465
    .local v5, "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDedicateBearerActivationRequest ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] primaryCid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", signalingFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Qos"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Tft"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 467
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-interface {v7, v8, v4, v3, v5}, Lcom/android/internal/telephony/Phone;->enableDedicateBearer(Ljava/lang/String;ZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v0

    .line 468
    .local v0, "ddcId":I
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v7

    invoke-direct {v1, p0, v6, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 469
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 471
    if-ltz v0, :cond_1

    .line 472
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 477
    :goto_1
    return-void

    .line 461
    .end local v0    # "ddcId":I
    .end local v1    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v3    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    .end local v4    # "signalingFlag":Z
    .end local v5    # "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 474
    .restart local v0    # "ddcId":I
    .restart local v1    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .restart local v3    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    .restart local v4    # "signalingFlag":Z
    .restart local v5    # "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleDedicateBearerActivationRequest ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] but no ddcId is assigned"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 475
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1
.end method

.method private handleDedicateBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "pdnDeactInd"    # Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;

    .prologue
    const/4 v6, 0x1

    .line 496
    const/4 v0, -0x1

    .line 497
    .local v0, "ddcId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest PdnDeactInd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 498
    iget-boolean v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "deactivation"

    iget v5, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->disableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    .line 512
    :goto_0
    if-ltz v0, :cond_3

    .line 513
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-direct {v1, p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 514
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iget-boolean v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v3, :cond_2

    .line 515
    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 519
    :goto_1
    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 526
    .end local v1    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :goto_2
    return-void

    .line 502
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    iget v4, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .line 503
    .local v2, "transaction":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    if-nez v2, :cond_1

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest do abort but no transaction found with transactionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 505
    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDataConnectionDeactivation(II)V

    goto :goto_0

    .line 507
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest do abort with ddcId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 508
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "abort"

    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->abortEnableDedicateBearer(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 517
    .end local v2    # "transaction":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .restart local v1    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_2
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    goto :goto_1

    .line 523
    .end local v1    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDedicateBearerDeactivationRequest but no corresponding ddcId is found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 524
    iget v3, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDataConnectionDeactivation(II)V

    goto :goto_2
.end method

.method private handleDedicateBearerModificationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 537
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 538
    .local v7, "transactionId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 539
    .local v0, "cid":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v11

    if-ne v11, v8, :cond_0

    move v2, v8

    .line 540
    .local v2, "isQosModify":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 541
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v5

    .line 542
    .local v5, "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v11

    if-ne v11, v8, :cond_1

    move v3, v8

    .line 543
    .local v3, "isTftModify":Z
    :goto_1
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 544
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;

    move-result-object v6

    .line 546
    .local v6, "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDedicateBearerModificationRequest ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Qos"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Tft"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 549
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_4

    .end local v5    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    :goto_4
    if-eqz v3, :cond_5

    .end local v6    # "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    :goto_5
    invoke-interface {v8, v0, v5, v6}, Lcom/android/internal/telephony/Phone;->modifyDedicateBearer(ILcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;)I

    move-result v1

    .line 550
    .local v1, "ddcId":I
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v8

    invoke-direct {v4, p0, v7, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 551
    .local v4, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput v0, v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 552
    iput v1, v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    .line 554
    if-ltz v1, :cond_6

    .line 555
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 558
    :goto_6
    return-void

    .end local v1    # "ddcId":I
    .end local v2    # "isQosModify":Z
    .end local v3    # "isTftModify":Z
    .end local v4    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_0
    move v2, v9

    .line 539
    goto/16 :goto_0

    .restart local v2    # "isQosModify":Z
    .restart local v5    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_1
    move v3, v9

    .line 542
    goto/16 :goto_1

    .line 546
    .restart local v3    # "isTftModify":Z
    .restart local v6    # "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_2
    const-string v8, ""

    goto :goto_2

    :cond_3
    const-string v8, ""

    goto :goto_3

    :cond_4
    move-object v5, v10

    .line 549
    goto :goto_4

    .end local v5    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_5
    move-object v6, v10

    goto :goto_5

    .line 557
    .end local v6    # "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    .restart local v1    # "ddcId":I
    .restart local v4    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v8

    invoke-direct {p0, v4, v8, v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionModification(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_6
.end method

.method private handleDefaultBearerActivationRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/4 v11, 0x1

    .line 313
    const/4 v9, -0x1

    .line 314
    .local v9, "result":I
    const/4 v1, 0x1

    .line 315
    .local v1, "isValid":I
    const/4 v3, 0x0

    .line 316
    .local v3, "isEmergencyInd":I
    const/16 v7, 0xb

    .line 317
    .local v7, "nNetworkType":I
    const-string v10, "enableIMS"

    .line 318
    .local v10, "userFeature":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->extractDefaultPdnActInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;

    move-result-object v6

    .line 319
    .local v6, "defaultPdnActInd":Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    new-instance v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    iget v2, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->transactionId:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v4

    invoke-direct {v8, p0, v2, v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 320
    .local v8, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    const-string v2, "handleDefaultBearerActivationRequest"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 323
    iget v2, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->emergency_ind:I

    packed-switch v2, :pswitch_data_0

    .line 333
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    .line 360
    :goto_0
    return-void

    .line 327
    :pswitch_0
    const/4 v3, 0x1

    .line 328
    const/16 v7, 0x2a

    .line 329
    const-string v10, "enableEMERGENCY"

    .line 330
    iput-boolean v11, v8, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 338
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

    iget-object v2, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    iget v4, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pcscf_discovery:I

    iget v5, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->signalingFlag:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;-><init>(ILcom/android/internal/telephony/dataconnection/QosStatus;III)V

    .line 340
    .local v0, "defaultBearerConfig":Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/Phone;->setDefaultBearerConfig(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)I

    .line 351
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v10}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v9

    .line 352
    if-ne v9, v11, :cond_0

    .line 353
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto :goto_0

    .line 354
    :cond_0
    if-nez v9, :cond_1

    .line 355
    const-string v2, "APN already active"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDefaultBearerActivationRequest=> startUsingNetworkFeature failed!!, result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 358
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDefaultBearerDeactivationRequest(ILcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;)V
    .locals 13
    .param p1, "requestId"    # I
    .param p2, "pdnDeactInd"    # Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    .line 375
    const/4 v7, -0x1

    .line 376
    .local v7, "result":I
    const-string v3, "enableIMS"

    .line 377
    .local v3, "networkFeature":Ljava/lang/String;
    const/16 v5, 0xb

    .line 378
    .local v5, "networkType":I
    const/4 v0, 0x0

    .line 382
    .local v0, "bIsEmergency":Z
    iget-boolean v10, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v10, :cond_3

    .line 383
    iget v10, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    iget v11, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    if-ne v10, v11, :cond_2

    iget v10, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    if-eq v10, v12, :cond_2

    move v0, v9

    .line 385
    :goto_0
    if-eqz v0, :cond_0

    .line 386
    const/16 v5, 0x2a

    .line 387
    const-string v3, "enableEMERGENCY"

    .line 390
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleDefaultBearerDeactivationRequest ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] deactivate cid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", networkFeature: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 392
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v8, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v7

    .line 398
    :goto_1
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    iget v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-direct {v6, p0, v8, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 399
    .local v6, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput-boolean v0, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 400
    if-ltz v7, :cond_7

    .line 401
    iget-boolean v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v8, :cond_5

    .line 402
    iget v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    iput v8, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 407
    :goto_2
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 408
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 409
    .local v1, "currState":Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v8, :cond_6

    .line 410
    const-string v8, "curr network state is DISCONNECTED, skip put transaction!!"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 416
    :goto_3
    if-eqz v0, :cond_1

    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->setEmergencyCid(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v1    # "currState":Landroid/net/NetworkInfo$State;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_4
    return-void

    .end local v6    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_2
    move v0, v8

    .line 383
    goto :goto_0

    .line 394
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleDedicateBearerDeactivationRequest ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] abort transactionId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", cid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", abortTransactionId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 404
    .restart local v6    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_5
    iget v8, p2, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    iput v8, v6, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    goto :goto_2

    .line 413
    .restart local v1    # "currState":Landroid/net/NetworkInfo$State;
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 417
    .end local v1    # "currState":Landroid/net/NetworkInfo$State;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NullPointerException: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnDeactivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    goto/16 :goto_4

    .line 423
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_7
    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnDeactivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    goto/16 :goto_4
.end method

.method private handlePcscfDiscoveryRequest(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 566
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 567
    .local v6, "transactionId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 568
    .local v0, "cid":I
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 570
    const/16 v7, 0x64

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v2

    .line 571
    .local v2, "interfaceBytes":[B
    const/4 v3, 0x0

    .line 573
    .local v3, "interfaceName":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v4, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "interfaceName":Ljava/lang/String;
    .local v4, "interfaceName":Ljava/lang/String;
    move-object v3, v4

    .line 578
    .end local v4    # "interfaceName":Ljava/lang/String;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    .line 580
    .local v5, "method":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePcscfDiscoveryRequest ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 581
    packed-switch v5, :pswitch_data_0

    .line 603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePcscfDiscoveryRequest receive unknown method ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 605
    :goto_1
    return-void

    .line 574
    .end local v5    # "method":I
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 584
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "method":I
    :pswitch_0
    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_1

    .line 587
    :pswitch_1
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByISim(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 590
    :pswitch_2
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByMo(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 593
    :pswitch_3
    invoke-direct {p0, v6, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByPco(IILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 597
    :pswitch_4
    invoke-direct {p0, v6, v3, v5, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByDhcp(ILjava/lang/String;ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 600
    :pswitch_5
    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->handlePcscfDiscoveryRequestByManual(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_1

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handlePcscfDiscoveryRequestByDhcp(ILjava/lang/String;ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 6
    .param p1, "transactionId"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "method"    # I
    .param p4, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePcscfDiscoveryRequestByDhcp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 622
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILjava/lang/String;Lcom/android/internal/telephony/ImsAdapter$VaEvent;I)V

    .line 624
    .local v0, "thread":Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->start()V

    .line 625
    return-void

    .line 622
    .end local v0    # "thread":Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;
    :cond_0
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByISim(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 6
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/4 v5, 0x1

    .line 628
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 629
    .local v3, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-nez v3, :cond_0

    .line 630
    const-string v4, "handlePcscfDiscoveryRequestByPco but no UiccController found"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 648
    :goto_0
    return-void

    .line 633
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 634
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_1

    .line 635
    const-string v4, "handlePcscfDiscoveryRequestByPco but no IccRecords found"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 636
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_0

    .line 638
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfPcscf()[B

    move-result-object v1

    .line 639
    .local v1, "pcscfBytes":[B
    if-eqz v1, :cond_2

    array-length v4, v1

    if-nez v4, :cond_3

    .line 640
    :cond_2
    const-string v4, "handlePcscfDiscoveryRequestByPco but no P-CSCF found"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_0

    .line 643
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v5, v1, v4}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>(I[BI)V

    .line 644
    .local v2, "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByManual(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 5
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 694
    const-string v3, "ril.pcscf.addr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "pcscf":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 696
    :cond_0
    const-string v3, "handlePcscfDiscoveryRequest (manual) invalid P-CSCF system property"

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 697
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 708
    :goto_0
    return-void

    .line 699
    :cond_1
    const-string v3, "ril.pcscf.port"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 700
    .local v2, "port":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePcscfDiscoveryRequest (manual) P-CSCF system property [address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 702
    new-instance v1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 703
    .local v1, "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    const/4 v3, 0x6

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 704
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 706
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto :goto_0
.end method

.method private handlePcscfDiscoveryRequestByMo(ILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 13
    .param p1, "transactionId"    # I
    .param p2, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/4 v12, 0x1

    .line 651
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->getImsService()Lcom/mediatek/common/ims/IImsManagerService;

    move-result-object v9

    .line 652
    .local v9, "service":Lcom/mediatek/common/ims/IImsManagerService;
    if-nez v9, :cond_0

    .line 653
    const-string v10, "handlePcscfDiscoveryRequestByMo but cannot get ImsManager for MO"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, p1, v12}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 691
    :goto_0
    return-void

    .line 656
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 657
    .local v8, "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    .line 660
    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v9, v10}, Lcom/mediatek/common/ims/IImsManagerService;->readImsMoString(I)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "moPcscf":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 662
    const-string v10, "handlePcscfDiscoveryRequestByMo and no MO P-CSCF is found (continue check LBO P-CSCF"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 668
    :goto_1
    invoke-interface {v9}, Lcom/mediatek/common/ims/IImsManagerService;->readImsLboPcscfMo()[Lcom/mediatek/common/ims/mo/ImsLboPcscf;

    move-result-object v4

    .line 669
    .local v4, "imsLboPcscfArray":[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    if-nez v4, :cond_3

    .line 670
    const-string v10, "handlePcscfDiscoveryRequestByMo and no LBO P-CSCF is found"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v4    # "imsLboPcscfArray":[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v7    # "moPcscf":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->getPcscfAddressCount()I

    move-result v10

    if-nez v10, :cond_4

    .line 684
    const-string v10, "handlePcscfDiscoveryRequestByMo but no any P-CSCF is found"

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, p1, v12}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    goto :goto_0

    .line 664
    .restart local v7    # "moPcscf":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePcscfDiscoveryRequestByMo and MO P-CSCF is found ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 665
    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 679
    .end local v7    # "moPcscf":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 672
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "imsLboPcscfArray":[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .restart local v7    # "moPcscf":Ljava/lang/String;
    :cond_3
    move-object v0, v4

    .local v0, "arr$":[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    :try_start_2
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v6, :cond_1

    aget-object v3, v0, v2

    .line 673
    .local v3, "imsLboPcscf":Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    invoke-virtual {v3}, Lcom/mediatek/common/ims/mo/ImsLboPcscf;->getLboPcscfAddress()Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, "lboPcscf":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handlePcscfDiscoveryRequestByMo and LBO P-CSCF is found ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 676
    const/4 v10, 0x0

    invoke-virtual {v8, v5, v10}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 687
    .end local v0    # "arr$":[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v2    # "i$":I
    .end local v3    # "imsLboPcscf":Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v4    # "imsLboPcscfArray":[Lcom/mediatek/common/ims/mo/ImsLboPcscf;
    .end local v5    # "lboPcscf":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "moPcscf":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto/16 :goto_0
.end method

.method private handlePcscfDiscoveryRequestByPco(IILcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 6
    .param p1, "transactionId"    # I
    .param p2, "cid"    # I
    .param p3, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePcscfDiscoveryRequestByPco ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, p2, v4}, Lcom/android/internal/telephony/Phone;->pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I

    move-result v1

    .line 610
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePcscfDiscoveryRequestByPco failed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 612
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V

    .line 618
    :goto_0
    return-void

    .line 614
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    invoke-virtual {p3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 615
    .local v0, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iput p2, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    .line 616
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto :goto_0
.end method

.method private isApnIMSorEmergency(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1526
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMsgAllowed(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "changed"    # I

    .prologue
    const/4 v0, 0x1

    .line 1530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1338
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1342
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-void
.end method

.method private makeRejectDefaultBearerEvent(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I

    .prologue
    .line 441
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187de

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 442
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectDefaultBearerDataConnActivation param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 444
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 445
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 446
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 448
    return-object v0
.end method

.method private notifyDataConnectionDeactivated(II)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "cause"    # I

    .prologue
    .line 1193
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187e6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1194
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDedicateDataConnectionDeactivated cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1199
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1200
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1202
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1203
    return-void
.end method

.method private notifyDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V
    .locals 7
    .param p1, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 1104
    const/4 v0, 0x0

    .line 1105
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 1106
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187e2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1110
    .restart local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDedicateDataConnection type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1117
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1118
    new-array v2, v5, [B

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1119
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v2

    invoke-static {v0, p2, v2, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDedicateDataConnection getPcoPcscf ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1121
    new-array v2, v5, [B

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    .line 1123
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1124
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {v0, p2, v6, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1122
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1108
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187ea

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .restart local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    goto :goto_0

    .line 1126
    .restart local v1    # "i":I
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p2, v6, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_2

    .line 1129
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDispatcher send event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1130
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 1131
    return-void
.end method

.method private notifyDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .param p1, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDedicateDataConnectionActivated property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1101
    return-void
.end method

.method private notifyDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .param p1, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDedicateDataConnectionModified ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1227
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1228
    return-void
.end method

.method private notifyDefaultBearerDataConnDeactivated(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "cause"    # I

    .prologue
    .line 950
    const-string v0, "notifyDefaultBearerDataConnDeactivated"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 951
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDataConnectionDeactivated(II)V

    .line 952
    return-void
.end method

.method private onDedicateDataConnectionStateChanged(ILcom/android/internal/telephony/DctConstants$State;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V
    .locals 7
    .param p1, "ddcId"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p3, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .param p4, "failCause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDedicateDataConnectionStateChanged ddcId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", failCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", properties="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x0

    .line 960
    .local v0, "hasTransaction":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v4, "waitRemoveTransactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 963
    .local v3, "transactionId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .line 964
    .local v2, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->ddcId:I

    if-ne v5, p1, :cond_0

    .line 965
    const/4 v0, 0x1

    .line 966
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    sparse-switch v5, :sswitch_data_0

    .line 1028
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDedicateDataConnectionStateChanged received unhandled state change event ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1034
    :cond_1
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 968
    :sswitch_0
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_3

    .line 969
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p4, v5, :cond_2

    .line 971
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 974
    :cond_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 976
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq p2, v5, :cond_4

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_1

    .line 978
    :cond_4
    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 982
    :sswitch_1
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    iget v6, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    if-ne v5, v6, :cond_8

    .line 983
    const-string v5, "abort"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 985
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p4, v5, :cond_5

    .line 986
    const-string v5, "onDedicateDataConnectionStateChanged to response abort success"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto :goto_1

    .line 989
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDedicateDataConnectionStateChanged to response abort fail failcause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDataConnectionDeactivation(II)V

    goto :goto_1

    .line 993
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_7

    .line 995
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto :goto_1

    .line 998
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDataConnectionDeactivation(II)V

    goto :goto_1

    .line 1002
    :cond_8
    iget v5, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    .line 1005
    const-string v5, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is already deactivated (MSG_ID_REQUEST_BEARER_DEACTIVATION)"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1006
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    goto/16 :goto_1

    .line 1009
    :cond_9
    const-string v5, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is not equaled (MSG_ID_REQUEST_BEARER_DEACTIVATION)"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1014
    :sswitch_2
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    iget v6, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    if-ne v5, v6, :cond_b

    .line 1015
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p2, v5, :cond_a

    .line 1017
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto/16 :goto_1

    .line 1020
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnectionModification(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto/16 :goto_1

    .line 1024
    :cond_b
    const-string v5, "onDedicateDataConnectionStateChanged ddcId is equaled but cid is not equaled (MSG_ID_REQUEST_BEARER_MODIFICATION)"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1038
    .end local v2    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v3    # "transactionId":Ljava/lang/Integer;
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1039
    .restart local v3    # "transactionId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto :goto_2

    .line 1041
    .end local v3    # "transactionId":Ljava/lang/Integer;
    :cond_d
    if-nez v0, :cond_e

    .line 1043
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataDispatcher$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1057
    const-string v5, "onDedicateDataConnectionStateChanged not matched to any case"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1060
    :cond_e
    :goto_3
    return-void

    .line 1045
    :pswitch_0
    iget v5, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDataConnectionDeactivated(II)V

    goto :goto_3

    .line 1048
    :pswitch_1
    const-string v5, "onDedicateDataConnectionStateChanged no matched transaction but receive state FAIL"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1051
    :pswitch_2
    const-string v5, "modification"

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1052
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_3

    .line 1054
    :cond_f
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_3

    .line 966
    nop

    :sswitch_data_0
    .sparse-switch
        0x187df -> :sswitch_0
        0x187e3 -> :sswitch_1
        0x187e7 -> :sswitch_2
    .end sparse-switch

    .line 1043
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onDefaultBearerDataConnFail(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v8, "onDefaultBearerDataConnFail"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 713
    const/4 v5, 0x0

    .line 715
    .local v5, "simId":I
    const/4 v1, 0x0

    .line 716
    .local v1, "hasTransaction":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v7, "waitRemoveTransactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v8, "reason"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, "reason":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 724
    .local v6, "transactionId":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .line 725
    .local v3, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    const v8, 0x187dc

    iget v9, v3, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    if-ne v8, v9, :cond_0

    .line 726
    const/4 v1, 0x1

    .line 727
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, p2}, Lcom/android/internal/telephony/Phone;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    .line 728
    .local v0, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v8

    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    .line 729
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 733
    .end local v0    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v3    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v6    # "transactionId":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 734
    .restart local v6    # "transactionId":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto :goto_1

    .line 736
    .end local v6    # "transactionId":Ljava/lang/Integer;
    :cond_2
    if-nez v1, :cond_3

    .line 739
    :cond_3
    return-void
.end method

.method private onDefaultBearerDataConnStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 742
    const/4 v9, 0x0

    .line 743
    .local v9, "simId":I
    const-class v13, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v14, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 744
    .local v10, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v13, "reason"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 751
    .local v8, "reason":Ljava/lang/String;
    const/4 v3, 0x0

    .line 752
    .local v3, "hasTransaction":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v12, "waitRemoveTransactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDefaultBearerDataConnStateChanged, state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", reason: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", apnType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 754
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 755
    .local v11, "transactionId":Ljava/lang/Integer;
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .line 756
    .local v7, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-boolean v13, v7, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    :cond_1
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-boolean v13, v7, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 758
    :cond_2
    iget v13, v7, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    sparse-switch v13, :sswitch_data_0

    .line 791
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDefaultBearerDataConnStateChanged received unhandled state change event ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->requestId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :sswitch_0
    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v10, v13, :cond_3

    .line 762
    const/4 v3, 0x1

    .line 763
    const-string v13, "linkProperties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 764
    .local v6, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p2

    invoke-direct {p0, v7, v0, v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Ljava/lang/String;Landroid/net/LinkProperties;)V

    .line 765
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    .end local v6    # "lp":Landroid/net/LinkProperties;
    :cond_3
    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v10, v13, :cond_0

    .line 767
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v13

    invoke-direct {p0, v7, v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    .line 768
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 772
    :sswitch_1
    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v10, v13, :cond_0

    .line 773
    const/4 v3, 0x1

    .line 774
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/Phone;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 775
    .local v1, "cidArray":[I
    if-eqz v1, :cond_4

    const/4 v13, 0x0

    aget v13, v1, v13

    iget v14, v7, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    if-ne v13, v14, :cond_4

    .line 776
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 777
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    if-eqz v13, :cond_0

    .line 780
    const-string v13, "IMS PDN is deactivated and to interrupt P-CSCF discovery thread"

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 781
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->interrupt()V

    .line 782
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    goto/16 :goto_0

    .line 784
    :cond_4
    if-nez v1, :cond_0

    .line 785
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 786
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 798
    .end local v1    # "cidArray":[I
    .end local v7    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .end local v11    # "transactionId":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 799
    .restart local v11    # "transactionId":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->removeTransaction(I)V

    goto :goto_1

    .line 801
    .end local v11    # "transactionId":Ljava/lang/Integer;
    :cond_6
    if-nez v3, :cond_7

    .line 803
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DataDispatcher$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 828
    :cond_7
    :goto_2
    return-void

    .line 806
    :pswitch_0
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/Phone;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 807
    .restart local v1    # "cidArray":[I
    if-eqz v1, :cond_7

    .line 808
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/Phone;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 809
    .local v2, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v13, v1

    if-ge v4, v13, :cond_8

    .line 810
    aget v13, v1, v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v14

    invoke-direct {p0, v13, v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->notifyDefaultBearerDataConnDeactivated(II)V

    .line 809
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 813
    :cond_8
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    if-eqz v13, :cond_7

    .line 814
    const-string v13, "IMS PDN is deactivated and to interrupt P-CSCF discovery thread"

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 815
    iget-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->interrupt()V

    .line 816
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    goto :goto_2

    .line 822
    .end local v1    # "cidArray":[I
    .end local v2    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v4    # "i":I
    :pswitch_1
    const-string v13, "Connected but currently no notify"

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 758
    :sswitch_data_0
    .sparse-switch
        0x187dc -> :sswitch_0
        0x187e3 -> :sswitch_1
    .end sparse-switch

    .line 803
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onNotifyGlobalIpAddr(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "intfName"    # Ljava/lang/String;

    .prologue
    .line 1267
    const/4 v5, -0x1

    .line 1268
    .local v5, "msgId":I
    const/4 v4, 0x0

    .line 1271
    .local v4, "ipAddrByteArray":[B
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->isApnIMSorEmergency(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1314
    :goto_0
    return-void

    .line 1276
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1277
    const-string v6, "interface name is empty"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    :cond_1
    const-string v6, "lte_global_ip_addr"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1282
    .local v3, "inetAddr":Ljava/net/InetAddress;
    instance-of v6, v3, Ljava/net/Inet6Address;

    if-eqz v6, :cond_2

    .line 1283
    const v5, 0x187ec

    .line 1295
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, p2}, Lcom/android/internal/telephony/Phone;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v1

    .line 1296
    .local v1, "defaultBearerProperties":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    if-nez v1, :cond_4

    .line 1297
    const-string v6, "default bearer properties is null, can\'t get cid"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1284
    .end local v1    # "defaultBearerProperties":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_2
    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    .line 1285
    const-string v6, "IPAddress Type ipV4"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1286
    const v5, 0x187eb

    goto :goto_1

    .line 1288
    :cond_3
    const-string v6, "Unknown IPAddress Type (using IPV4)"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 1290
    const v5, 0x187eb

    goto :goto_1

    .line 1301
    .restart local v1    # "defaultBearerProperties":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_4
    iget v0, v1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    .line 1304
    .local v0, "cid":I
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 1305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotifyGlobalIpAddr intfName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", byte addr length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1307
    if-nez v4, :cond_5

    .line 1308
    const-string v6, "invalid ipAddrByteArray (null)"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1312
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mDataDispatcherUtil:Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;

    invoke-virtual {v6, v5, v0, v4, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->composeGlobalIPAddrVaEvent(II[BLjava/lang/String;)Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    move-result-object v2

    .line 1313
    .local v2, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto/16 :goto_0
.end method

.method private rejectDataConnectionDeactivation(II)V
    .locals 3
    .param p1, "transactionId"    # I
    .param p2, "cause"    # I

    .prologue
    .line 1206
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187e5

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1207
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectBearerDeactivation transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1212
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1213
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1215
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1216
    return-void
.end method

.method private rejectDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V
    .locals 6
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .param p4, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1139
    const/4 v0, 0x0

    .line 1140
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_1

    .line 1141
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187e1

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1145
    .restart local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectDedicateDataConnection type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", param"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", failCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "property"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1152
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1153
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1154
    if-nez p3, :cond_2

    .line 1155
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1161
    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1163
    if-nez p3, :cond_3

    .line 1164
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p4, v4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1168
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/16 v2, 0xa

    if-ge v1, v2, :cond_5

    .line 1169
    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 1170
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v0, p4, v4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1168
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1143
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v2, 0x187e9

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .restart local v0    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    goto :goto_0

    .line 1157
    :cond_2
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_1

    .line 1166
    :cond_3
    invoke-static {v0, p4, v4, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_2

    .line 1172
    .restart local v1    # "i":I
    :cond_4
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {v0, p4, v4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_4

    .line 1175
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDispatcher send event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1176
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 1177
    return-void
.end method

.method private rejectDedicateDataConnectionActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectDedicateBearerActivation param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1135
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1136
    return-void
.end method

.method private rejectDedicateDataConnectionModification(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectDedicateDataConnectionModification param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;ILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1234
    return-void
.end method

.method private rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I

    .prologue
    .line 366
    iget-boolean v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    if-eqz v1, :cond_0

    const-string v0, "enableEMERGENCY"

    .line 368
    .local v0, "userFeature":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 372
    return-void

    .line 366
    .end local v0    # "userFeature":Ljava/lang/String;
    :cond_0
    const-string v0, "enableIMS"

    goto :goto_0
.end method

.method private rejectDefaultBearerDataConnDeactivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V
    .locals 1
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 434
    return-void
.end method

.method private rejectPcscfDiscovery(II)V
    .locals 3
    .param p1, "transactionId"    # I
    .param p2, "failCause"    # I

    .prologue
    .line 1252
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187ef

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1253
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectPcscfDiscovery transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1258
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1259
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1261
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1262
    return-void
.end method

.method private responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .prologue
    .line 1180
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187e4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1181
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseDataConnectionDeactivated param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1185
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1186
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->cid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1187
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1189
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1190
    return-void
.end method

.method private responseDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V
    .locals 6
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 1068
    const/4 v1, 0x0

    .line 1069
    .local v1, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 1070
    new-instance v1, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v1    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v3, 0x187e0

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1074
    .restart local v1    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseDedicateDataConnection type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", param"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1075
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1083
    .local v0, "concatenateBearersSize":I
    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1084
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1085
    const/4 v3, 0x2

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1086
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->IMS_APN:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v3

    invoke-static {v1, p3, v3, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1087
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1088
    const/4 v3, 0x3

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1089
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    .line 1090
    if-ge v2, v0, :cond_1

    .line 1091
    iget-object v3, p2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {v1, p3, v5, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 1089
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1072
    .end local v0    # "concatenateBearersSize":I
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .end local v1    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const v3, 0x187e8

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .restart local v1    # "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    goto :goto_0

    .line 1093
    .restart local v0    # "concatenateBearersSize":I
    .restart local v2    # "i":I
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {v1, p3, v5, v3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_2

    .line 1095
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1096
    return-void
.end method

.method private responseDedicateDataConnectionActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseDedicateDataConnectionActivated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1064
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1065
    return-void
.end method

.method private responseDedicateDataConnectionModified(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseDedicateDataConnectionModified param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1221
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDedicateDataConnection(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;I)V

    .line 1222
    return-void
.end method

.method private responseDefaultBearerDataConnActivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;Ljava/lang/String;Landroid/net/LinkProperties;)V
    .locals 19
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 831
    const/4 v5, 0x1

    .line 832
    .local v5, "bResponse":Z
    new-instance v8, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v17, 0x187dd

    const v18, 0x9470

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(II)V

    .line 833
    .local v8, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/4 v4, 0x0

    .line 835
    .local v4, "addrCnt":I
    const/4 v11, 0x0

    .line 837
    .local v11, "ipMask":I
    const-string v17, "responseDefaultDataConnectionActivated "

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 851
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 853
    if-nez p3, :cond_1

    .line 854
    const-string v17, "Error: get null link properties"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 860
    :cond_0
    :goto_0
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 861
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 863
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->dumpPdnAckRsp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 866
    const/16 v16, 0x0

    .line 867
    .local v16, "pdp_addr_type":I
    if-eqz p3, :cond_4

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 869
    .local v12, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 870
    .local v3, "addr":Ljava/net/InetAddress;
    instance-of v0, v3, Ljava/net/Inet6Address;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 871
    const-string v17, "ipv6 type"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 872
    or-int/lit8 v11, v11, 0x2

    goto :goto_1

    .line 856
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "linkAddr":Landroid/net/LinkAddress;
    .end local v16    # "pdp_addr_type":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v4

    .line 857
    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v4, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 873
    .restart local v3    # "addr":Ljava/net/InetAddress;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "linkAddr":Landroid/net/LinkAddress;
    .restart local v16    # "pdp_addr_type":I
    :cond_2
    instance-of v0, v3, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 874
    const-string v17, "ipv4 type"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 875
    or-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 877
    :cond_3
    const-string v17, "invalid address type"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 878
    or-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 883
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "linkAddr":Landroid/net/LinkAddress;
    :cond_4
    packed-switch v11, :pswitch_data_0

    .line 900
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v6

    .line 901
    .local v6, "defaultBearerProp":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    new-instance v7, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v7}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    .line 902
    .local v7, "defaultBearerPropEmpty":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    const/16 v17, 0x0

    aput-object v7, v15, v17

    const/16 v17, 0x1

    aput-object v7, v15, v17

    .line 903
    .local v15, "pdnContextsForVa":[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    .line 904
    .local v13, "msgType":[I
    if-nez v6, :cond_5

    .line 906
    const/16 v17, 0x0

    aput-object v7, v15, v17

    .line 907
    const/4 v5, 0x0

    .line 908
    const-string v17, "error happenening , default breaer should not be null"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 923
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPcoPcscf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v14

    .line 927
    .local v14, "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 928
    aget v17, v13, v9

    aget-object v18, v15, v9

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v8, v0, v1, v2, v14}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeAllBearersProperties(Lcom/android/internal/telephony/ImsAdapter$VaEvent;IILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    .line 927
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 885
    .end local v6    # "defaultBearerProp":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v7    # "defaultBearerPropEmpty":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .end local v9    # "i":I
    .end local v13    # "msgType":[I
    .end local v14    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .end local v15    # "pdnContextsForVa":[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :pswitch_0
    const/16 v16, 0x8d

    .line 886
    goto :goto_2

    .line 888
    :pswitch_1
    const/16 v16, 0x57

    .line 889
    goto :goto_2

    .line 891
    :pswitch_2
    const/16 v16, 0x21

    goto :goto_2

    .line 911
    .restart local v6    # "defaultBearerProp":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .restart local v7    # "defaultBearerPropEmpty":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .restart local v13    # "msgType":[I
    .restart local v15    # "pdnContextsForVa":[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    :cond_5
    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 912
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "invalid defaultBearerProp, interface id("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->interfaceId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), cid("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 915
    const/4 v5, 0x0

    .line 919
    :cond_6
    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v18, v13, v17

    .line 920
    const/16 v17, 0x0

    aput-object v6, v15, v17

    goto/16 :goto_3

    .line 930
    .restart local v9    # "i":I
    .restart local v14    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 935
    .end local v9    # "i":I
    .end local v14    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->isEmergency:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 936
    if-eqz v5, :cond_a

    .line 937
    iget v0, v6, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->setEmergencyCid(I)V

    .line 942
    :cond_8
    :goto_6
    return-void

    .line 932
    :cond_9
    sget-object v17, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;I)V

    goto :goto_5

    .line 939
    :cond_a
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->setEmergencyCid(I)V

    goto :goto_6

    .line 883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 903
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private responseDefaultBearerDataConnDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V
    .locals 1
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .prologue
    .line 945
    const-string v0, "responseDefaultBearerDataConnDeactivated"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 946
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responseDataConnectionDeactivated(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V

    .line 947
    return-void
.end method

.method private responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 3
    .param p1, "transactionId"    # I
    .param p2, "pcscfInfo"    # Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .prologue
    .line 1237
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v1, 0x187ee

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 1238
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responsePcscfDiscovery transactionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pcscf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1244
    iget v1, p2, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->source:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 1245
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1246
    invoke-static {v0, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writePcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    .line 1248
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 1249
    return-void
.end method

.method private sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 298
    return-void
.end method

.method private setEmergencyCid(I)V
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mEmergencyCid to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mEmergencyCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 303
    return-void
.end method


# virtual methods
.method public VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 282
    const-string v0, "DataDispatcher receives get phone instance when handling event callback"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    return-void
.end method

.method public disableRequest()V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    .line 269
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "DataDispatcher is going to be disabled, to interrupt dhcp thread"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->interrupt()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPcscfDiscoveryDchpThread:Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    .line 277
    :cond_1
    return-void

    .line 269
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dumpTransactions()V
    .locals 4

    .prologue
    .line 1327
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1328
    const-string v2, "====Start dump [transactions]===="

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1329
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .line 1330
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump transactions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    .end local v1    # "param":Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;
    :cond_0
    const-string v2, "====End dump [transactions]===="

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1335
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 1333
    :cond_1
    const-string v2, "====dump [transactions] but empty===="

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableRequest()V
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "DataDispatcher receives get phone instance when enable dispatcher"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v2

    .line 251
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    if-nez v1, :cond_1

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DEDICATE_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mIsBroadcastReceiverRegistered:Z

    .line 260
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    monitor-exit v2

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected putTransaction(Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$TransactionParam;->transactionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->dumpTransactions()V

    .line 1319
    return-void
.end method

.method protected removeTransaction(I)V
    .locals 2
    .param p1, "transactionId"    # I

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->dumpTransactions()V

    .line 1324
    return-void
.end method

.method public setSocket(Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "socket"    # Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 293
    return-void
.end method
