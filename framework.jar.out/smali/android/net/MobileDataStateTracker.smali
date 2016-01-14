.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$2;,
        Landroid/net/MobileDataStateTracker$DhcpThread;,
        Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;,
        Landroid/net/MobileDataStateTracker$NetworkDataEntry;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static EMERGENCY_APN:Ljava/lang/String; = null

.field public static final EVENT_GET_GLOBAL_IP:I = 0x65

.field private static IMS_APN:Ljava/lang/String; = null

.field private static final IP_DHCP_NONE:I = 0x0

.field private static final IP_DHCP_V4:I = 0x1

.field private static final IP_DHCP_V6:I = 0x2

.field private static final RA_POLLING_TIMER:[I

.field private static final RESULT_RA_FAIL:Ljava/lang/String; = "RaFail"

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final UNKNOWN:I = 0x7fffffff

.field private static final VDBG:Z = true

.field private static mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

.field private static mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

.field private static mTrackerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/MobileDataStateTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mHandler:Landroid/os/Handler;

.field private mIPDhcpStatus:I

.field private mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMessenger:Landroid/os/Messenger;

.field private mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkInfoDt:[Landroid/net/NetworkInfo;

.field private mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mSamplingDataTracker:Landroid/net/SamplingDataTracker;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field protected mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x3840

    const/16 v8, 0x1680

    const/16 v7, 0x9

    const v6, 0x7fffffff

    .line 75
    const-string v0, "ims"

    sput-object v0, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    .line 76
    const-string v0, "emergency"

    sput-object v0, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/MobileDataStateTracker;->mTrackerMap:Ljava/util/HashMap;

    .line 933
    const/16 v0, 0xf

    new-array v0, v0, [Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x2

    const/16 v4, 0xed

    const/16 v5, 0x76

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v2, 0x30

    const/16 v3, 0x28

    invoke-direct {v1, v10, v2, v3, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v1, v0, v10

    const/4 v1, 0x2

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x3

    const/16 v4, 0x180

    const/16 v5, 0x40

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v9, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    invoke-direct {v2, v7, v9, v8, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v9, v8, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xf

    const/16 v4, 0x5208

    invoke-direct {v2, v3, v4, v8, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v2, 0x5

    const/16 v3, 0x9a4

    const/16 v4, 0x99

    invoke-direct {v1, v2, v3, v4, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x6

    const/16 v4, 0xc00

    const/16 v5, 0x708

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xc

    const/16 v4, 0x396c

    const/16 v5, 0x708

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xd

    const v4, 0x186a0

    const v5, 0xc350

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    .line 1161
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/MobileDataStateTracker;->RA_POLLING_TIMER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "netType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 79
    new-array v0, v2, [Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 85
    new-array v0, v2, [Landroid/net/NetworkInfo;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;
 
    move-result-object v2
 
    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I
 
    move-result v2
 
    new-array v2, v2, [Lcom/android/internal/telephony/ITelephony;
 
    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    .line 86
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 91
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 92
    iput-boolean v4, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 96
    iput-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 97
    iput-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Landroid/net/SamplingDataTracker;

    invoke-direct {v0}, Landroid/net/SamplingDataTracker;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    .line 121
    iput v4, p0, Landroid/net/MobileDataStateTracker;->mIPDhcpStatus:I

    .line 182
    new-instance v0, Landroid/net/MobileDataStateTracker$1;

    invoke-direct {v0, p0}, Landroid/net/MobileDataStateTracker$1;-><init>(Landroid/net/MobileDataStateTracker;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 133
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 136
    invoke-static {p1}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, p2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 142
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, p2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 145
    return-void
.end method

.method static synthetic access$1002(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/MobileDataStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->getRaGlobalIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 69
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/MobileDataStateTracker;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->sendGlobalIPAddrToVa(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/net/MobileDataStateTracker;->mTrackerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private getGlobalIpV6Addr()V
    .locals 1

    .prologue
    .line 1291
    new-instance v0, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;

    invoke-direct {v0, p0, p0}, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker;)V

    .line 1292
    .local v0, "queryThread":Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;
    invoke-virtual {v0}, Landroid/net/MobileDataStateTracker$GlobalIpV6AddrQueryThread;->start()V

    .line 1293
    return-void
.end method

.method private getIMSGlobalIpAddr()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1251
    const/4 v0, 0x0

    .line 1252
    .local v0, "cnt":I
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1253
    .local v3, "inetAddress":Ljava/net/InetAddress;
    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    .line 1254
    const-string v4, "getIMSGlobalIpAddr, ip is IpV6"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1255
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->getGlobalIpV6Addr()V

    .line 1272
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_0
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 1257
    const-string v4, "getIMSGlobalIpAddr, ip is IpV4"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1260
    const-string v4, "getIMSGlobalIpAddr, Using dhcp"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1261
    new-instance v1, Landroid/net/MobileDataStateTracker$DhcpThread;

    invoke-direct {v1, p0, p0, v5}, Landroid/net/MobileDataStateTracker$DhcpThread;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker;I)V

    .line 1262
    .local v1, "dhcpThread":Landroid/net/MobileDataStateTracker$DhcpThread;
    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker$DhcpThread;->start()V

    goto :goto_1

    .line 1264
    .end local v1    # "dhcpThread":Landroid/net/MobileDataStateTracker$DhcpThread;
    :cond_1
    const-string v4, "getIMSGlobalIpAddr, send to Handler"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->sendIPAddrToHandler(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 1268
    :cond_2
    const-string v4, "getIMSGlobalIpAddr, ip is unknown type, use IpV4 temporary"

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->sendIPAddrToHandler(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 1274
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIMSGlobalIpAddr, ip cnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method private static getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    .locals 7
    .param p0, "networkType"    # I

    .prologue
    .line 952
    sget-object v0, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    .local v0, "arr$":[Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 953
    .local v1, "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    iget v4, v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->networkType:I

    if-ne v4, p0, :cond_0

    .line 959
    .end local v1    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :goto_1
    return-object v1

    .line 952
    .restart local v1    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 958
    .end local v1    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_1
    const-string v4, "MobileDataStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find Theoretical BW entry for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I
    .locals 2
    .param p0, "networkType"    # I
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 967
    packed-switch p0, :pswitch_data_0

    .line 992
    :pswitch_0
    const v1, 0x7fffffff

    .line 995
    :goto_0
    return v1

    .line 975
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 995
    .local v0, "level":I
    :goto_1
    mul-int/lit8 v1, v0, 0x64

    div-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 979
    .end local v0    # "level":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 980
    .restart local v0    # "level":I
    goto :goto_1

    .line 984
    .end local v0    # "level":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 985
    .restart local v0    # "level":I
    goto :goto_1

    .line 987
    .end local v0    # "level":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 988
    .restart local v0    # "level":I
    goto :goto_1

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneService(Z)V
    .locals 5
    .param p1, "forceRefresh"    # Z

    .prologue
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getPhoneService_aosp(Z)V
    .locals 1
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 400
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 402
    :cond_1
    return-void
.end method

.method private getRaGlobalIpAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1189
    const-string v0, "RaFail"

    .line 1190
    .local v0, "address":Ljava/lang/String;
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v8, :cond_1

    .line 1191
    const-string v8, "getRaGlobalIpAddress but no LinkProperties"

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1245
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1195
    .restart local v0    # "address":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1196
    .local v3, "interfaceName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1197
    const-string v8, "getRaGlobalIpAddress but interface name"

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v8, Landroid/net/MobileDataStateTracker;->RA_POLLING_TIMER:[I

    array-length v4, v8

    .local v4, "length":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1202
    iget-object v8, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 1203
    .local v7, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v7, v8, :cond_3

    .line 1204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress but data state is not connected ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "net.ipv6."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".prefix"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1209
    .local v5, "prefix":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 1211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress get prefix ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0, v5}, Landroid/net/MobileDataStateTracker;->getRaResultAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1214
    :cond_4
    invoke-static {v3}, Landroid/net/NetworkUtils;->getRaFlags(Ljava/lang/String;)I

    move-result v6

    .line 1220
    .local v6, "raResult":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress get raResult ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1222
    const/4 v8, 0x1

    if-eq v6, v8, :cond_5

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    .line 1223
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "net.ipv6."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".prefix"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress get prefix after RA result ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0, v5}, Landroid/net/MobileDataStateTracker;->getRaResultAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1226
    :cond_6
    const/4 v8, 0x2

    if-ne v6, v8, :cond_7

    .line 1228
    const-string v8, "getRaGlobalIpAddress need to do DHCP, return null"

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1229
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1232
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress keep polling ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1236
    monitor-enter p0

    .line 1238
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRaGlobalIpAddress no RA result fould, wait for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1239
    sget-object v8, Landroid/net/MobileDataStateTracker;->RA_POLLING_TIMER:[I

    aget v8, v8, v2

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    :goto_2
    :try_start_1
    monitor-exit p0

    .line 1201
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1240
    :catch_0
    move-exception v1

    .line 1241
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1243
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private getRaResultAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1165
    const/4 v0, 0x0

    .line 1166
    .local v0, "address":Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1167
    .local v3, "inetAddress":Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet6Address;

    if-eqz v7, :cond_0

    .line 1170
    :try_start_0
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 1171
    .local v4, "ipBytes":[B
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 1172
    .local v6, "prefixBytes":[B
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v5, v7, :cond_1

    .line 1174
    aget-byte v7, v6, v5

    aput-byte v7, v4, v5

    .line 1172
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1177
    :cond_1
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRaResultAddress get address ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "ipBytes":[B
    .end local v5    # "j":I
    .end local v6    # "prefixBytes":[B
    :cond_2
    return-object v0

    .line 1180
    .restart local v3    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 1181
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isDualTalkMode()Z
    .locals 1

    .prologue
    .line 1156
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 848
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .param p0, "netType"    # I

    .prologue
    .line 767
    sparse-switch p0, :sswitch_data_0

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->sloge(Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 769
    :sswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 771
    :sswitch_1
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 773
    :sswitch_2
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 775
    :sswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 777
    :sswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 779
    :sswitch_5
    const-string v0, "fota"

    goto :goto_0

    .line 781
    :sswitch_6
    const-string v0, "ims"

    goto :goto_0

    .line 783
    :sswitch_7
    const-string v0, "cbs"

    goto :goto_0

    .line 785
    :sswitch_8
    const-string v0, "ia"

    goto :goto_0

    .line 787
    :sswitch_9
    const-string v0, "dm"

    goto :goto_0

    .line 789
    :sswitch_a
    const-string/jumbo v0, "net"

    goto :goto_0

    .line 791
    :sswitch_b
    const-string/jumbo v0, "wap"

    goto :goto_0

    .line 793
    :sswitch_c
    const-string v0, "cmmail"

    goto :goto_0

    .line 795
    :sswitch_d
    const-string/jumbo v0, "rcse"

    goto :goto_0

    .line 797
    :sswitch_e
    const-string v0, "emergency"

    goto :goto_0

    .line 767
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xe -> :sswitch_8
        0x22 -> :sswitch_9
        0x23 -> :sswitch_b
        0x24 -> :sswitch_a
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x2a -> :sswitch_e
    .end sparse-switch
.end method

.method public static onDataStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .local v9, "logSb":Ljava/lang/StringBuilder;
    const-string v19, "apnType"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1435
    .local v5, "apnType":Ljava/lang/String;
    sget-object v19, Landroid/net/MobileDataStateTracker;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/MobileDataStateTracker;

    .line 1438
    .local v18, "tracker":Landroid/net/MobileDataStateTracker;
    const/4 v6, 0x0

    .line 1440
    .local v6, "bNeedGetIMSIP":Z
    if-nez v18, :cond_1

    .line 1442
    sget-object v19, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->broadcastDataConnectionStateChanged(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 1443
    const-string v19, "MobileDataStateTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "tracker(null), apn type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1447
    :cond_1
    const/4 v15, 0x0

    .line 1448
    .local v15, "slot":I
    const/4 v7, 0x0

    .line 1454
    .local v7, "curSlot":I
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1457
    :cond_2
    if-eq v15, v7, :cond_3

    .line 1458
    const-string v19, "Receive peer SIM data state.ignor!"

    invoke-direct/range {v18 .. v19}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1460
    sget-object v19, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->broadcastDataConnectionStateChanged(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1467
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo;->setIsConnectedToProvisioningNetwork(Z)V

    .line 1469
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Broadcast received: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " apnType="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v13

    .line 1474
    .local v13, "oldSubtype":I
    const/4 v11, 0x0

    .line 1480
    .local v11, "newSubType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    .line 1481
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v17

    .line 1484
    .local v17, "subTypeName":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1485
    if-eq v11, v13, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1486
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v19, v0

    const v20, 0x70003

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1488
    .local v10, "msg":Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1491
    .end local v10    # "msg":Landroid/os/Message;
    :cond_4
    const-class v19, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v20, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1493
    .local v16, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v19, "reason"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1494
    .local v14, "reason":Ljava/lang/String;
    const-string v19, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1495
    .local v4, "apnName":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "networkRoaming"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 1497
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " setting isAvailable to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v19, "networkUnvailable"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_8

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    const-string/jumbo v19, "networkUnvailable"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1504
    const/4 v8, 0x0

    .line 1505
    .local v8, "dataStateChanged":Z
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1506
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    aget-object v12, v19, v15

    .line 1507
    .local v12, "nwInfo":Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v19

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1509
    const-string/jumbo v19, "networkRoaming"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 1510
    const-string/jumbo v19, "networkUnvailable"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_a

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1511
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v19, v0

    aget-object v19, v19, v15

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_b

    const/4 v8, 0x1

    .line 1513
    :goto_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " [DT]Received state="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", old[slot:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v20, v0

    aget-object v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", reason="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v14, :cond_c

    const-string v19, "(unspecified)"

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    .end local v12    # "nwInfo":Landroid/net/NetworkInfo;
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1527
    if-eqz v8, :cond_17

    .line 1554
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1555
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v19, v0

    aput-object v16, v19, v15

    .line 1560
    :goto_7
    sget-object v19, Landroid/net/MobileDataStateTracker$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 1620
    :cond_5
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "logSb":Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1621
    .restart local v9    # "logSb":Ljava/lang/StringBuilder;
    const-string v19, "TelephonyMgr.DataConnectionStateChanged"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1623
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NetworkInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " subType = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " subTypeName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    :cond_6
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    .line 1628
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " LinkProperties = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    :goto_9
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    .line 1634
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " LinkCapabilities = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkCapabilities;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    :goto_a
    const-string v19, "MobileDataStateTracker"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/SamplingDataTracker;->resetSamplingData()V

    .line 1681
    :cond_7
    :goto_b
    sget-object v19, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v8}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->broadcastDataConnectionStateChanged(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 1682
    if-eqz v6, :cond_0

    .line 1683
    invoke-direct/range {v18 .. v18}, Landroid/net/MobileDataStateTracker;->getIMSGlobalIpAddr()V

    goto/16 :goto_0

    .line 1497
    .end local v8    # "dataStateChanged":Z
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1500
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1510
    .restart local v8    # "dataStateChanged":Z
    .restart local v12    # "nwInfo":Landroid/net/NetworkInfo;
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1511
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v19, v14

    .line 1513
    goto/16 :goto_5

    .line 1517
    .end local v12    # "nwInfo":Landroid/net/NetworkInfo;
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/4 v8, 0x1

    .line 1519
    :goto_c
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Received state="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", old="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", reason="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v14, :cond_f

    const-string v19, "(unspecified)"

    :goto_d
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1517
    :cond_e
    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    move-object/from16 v19, v14

    .line 1519
    goto :goto_d

    .line 1557
    :cond_10
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_7

    .line 1562
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 1563
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1568
    :cond_11
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v4}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    sget-object v19, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    sget-object v19, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1573
    :cond_12
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/MobileDataStateTracker;->mIPDhcpStatus:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1575
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/MobileDataStateTracker;->mIPDhcpStatus:I

    goto/16 :goto_8

    .line 1590
    :pswitch_1
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v4}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1597
    :pswitch_2
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v4}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1601
    :pswitch_3
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V

    .line 1604
    sget-object v19, Landroid/net/MobileDataStateTracker;->IMS_APN:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    sget-object v19, Landroid/net/MobileDataStateTracker;->EMERGENCY_APN:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1605
    :cond_13
    const/4 v6, 0x1

    .line 1606
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Apn: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", need to get IMS IP"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1612
    :cond_14
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v4}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1630
    :cond_15
    const-string v19, " LinkProperties = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1636
    :cond_16
    const-string v19, " LinkCapabilities = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1648
    :cond_17
    const-string v19, "linkPropertiesChanged"

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 1649
    const-string v19, "linkProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/net/LinkProperties;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1650
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v19, v0

    if-nez v19, :cond_18

    .line 1651
    const-string v19, "No link property in LINK_PROPERTIES change event."

    invoke-direct/range {v18 .. v19}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1652
    new-instance v19, Landroid/net/LinkProperties;

    invoke-direct/range {v19 .. v19}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1655
    :cond_18
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v19, v0

    const v20, 0x70001

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1659
    .restart local v10    # "msg":Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1662
    .end local v10    # "msg":Landroid/os/Message;
    :cond_19
    if-eqz v14, :cond_7

    const-string v19, "apnFailed"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    const-string/jumbo v19, "noSuchPdp"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_1a
    if-eqz v5, :cond_7

    const-string v19, "default"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 1667
    const-string v19, "Handle PhoneConstants.REASON_APN_FAILED OR  PhoneConstants.REASON_NO_SUCH_PDP from GeminiDataSubUtil"

    invoke-direct/range {v18 .. v19}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1668
    sget-object v19, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1669
    invoke-virtual/range {v18 .. v18}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1670
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1675
    :cond_1b
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v4}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendGlobalIPAddrToVa(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lte_global_ip_addr"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1284
    const-string v1, "apnType"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    const-string v1, "iface"

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1288
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x70000

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDetailed state, old ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_3

    .line 534
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 535
    .local v2, "wasConnecting":Z
    :goto_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "lastReason":Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 543
    move-object p2, v0

    .line 544
    :cond_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v4, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 546
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 552
    .end local v0    # "lastReason":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "wasConnecting":Z
    :cond_1
    :goto_1
    return-void

    .line 534
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 547
    :cond_3
    if-eqz p2, :cond_1

    const-string/jumbo v3, "noSuchPdp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "apnFailed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_1

    .line 548
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 550
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private setEnableApnMSim(Ljava/lang/String;ZI)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, p3

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, p3

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    :goto_1
    return v2

    :cond_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, p3

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnableApnMSim Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    const-string v2, "enable"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "disable"

    goto :goto_2
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    .local v0, "dds":I
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v3

    :goto_1
    return v3

    :cond_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    if-nez v2, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_3

    const-string v3, "enable"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " APN type \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    const-string v3, "disable"

    goto :goto_2
.end method

.method private setEnableApn_aosp(Ljava/lang/String;Z)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 740
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 745
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 746
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 747
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 762
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    const-string v2, "enable"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 763
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 752
    :cond_1
    if-eqz p2, :cond_2

    .line 753
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 755
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 745
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v2, "disable"

    goto :goto_1
.end method

.method private setEnableApnGemini(Ljava/lang/String;ZI)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "radioNum"    # I

    .prologue
    .line 1085
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1090
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1091
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 1092
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1108
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    const-string v2, "enable"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1110
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 1097
    :cond_1
    if-eqz p2, :cond_2

    .line 1098
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gemini before enableApnTypeGemini() and mApnType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,radioNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1, p3}, Lcom/android/internal/telephony/ITelephony;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 1101
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1, p3}, Lcom/android/internal/telephony/ITelephony;->disableApnTypeGemini(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1090
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v2, "disable"

    goto :goto_1
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 856
    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method

.method private updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    const-string v0, "linkProperties"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 288
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    .line 289
    const-string v0, "CONNECTED event did not supply link properties."

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 290
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 292
    :cond_0
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 294
    const-string v0, "linkCapabilities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkCapabilities;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 296
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v0, :cond_1

    .line 297
    const-string v0, "CONNECTED event did not supply link capabilities."

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 298
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 300
    :cond_1
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 678
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 679
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 1
    .param p1, "isCaptivePortal"    # Z

    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 514
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    .line 517
    :cond_0
    return-void

    .line 514
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 276
    return-void
.end method

.method public enableMobileProvisioning(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMobileProvisioning(url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 693
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 694
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 695
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x42025

    iput v2, v1, Landroid/os/Message;->what:I

    .line 696
    const-string/jumbo v2, "provisioningUrl"

    invoke-static {v2, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 697
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 699
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 817
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 809
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 6

    .prologue
    .line 862
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 864
    :cond_0
    const/4 v1, 0x0

    .line 916
    :goto_0
    return-object v1

    .line 867
    :cond_1
    new-instance v1, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v1}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 869
    .local v1, "li":Landroid/net/MobileLinkQualityInfo;
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setNetworkType(I)V

    .line 871
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v3, v1}, Landroid/net/SamplingDataTracker;->setCommonLinkQualityInfoFields(Landroid/net/LinkQualityInfo;)V

    .line 873
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    if-eqz v3, :cond_3

    .line 874
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setMobileNetworkType(I)V

    .line 876
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    move-result-object v0

    .line 877
    .local v0, "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    if-eqz v0, :cond_2

    .line 878
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->downloadBandwidth:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 879
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->uploadBandwidth:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 880
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->latency:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalLatency(I)V

    .line 883
    :cond_2
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_3

    .line 884
    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getMobileNetworkType()I

    move-result v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setNormalizedSignalStrength(I)V

    .line 889
    .end local v0    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_3
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 890
    .local v2, "ss":Landroid/telephony/SignalStrength;
    if-eqz v2, :cond_4

    .line 892
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setRssi(I)V

    .line 893
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setGsmErrorRate(I)V

    .line 894
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setCdmaDbm(I)V

    .line 895
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setCdmaEcio(I)V

    .line 896
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoDbm(I)V

    .line 897
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoEcio(I)V

    .line 898
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoSnr(I)V

    .line 899
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteSignalStrength(I)V

    .line 900
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRsrp(I)V

    .line 901
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRsrq(I)V

    .line 902
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRssnr(I)V

    .line 903
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteCqi(I)V

    .line 907
    :cond_4
    const-string v3, "MobileDataStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning LinkQualityInfo with MobileNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getMobileNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Theoretical Rx BW = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getTheoreticalRxBandwidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gsm Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getRssi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cdma Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getCdmaDbm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " evdo Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getEvdoDbm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Lte Signal Strength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getLteSignalStrength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 420
    const-string/jumbo v1, "unknown"

    .line 421
    .local v1, "networkTypeStr":Ljava/lang/String;
    new-instance v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 425
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 433
    .local v0, "netType":I
    packed-switch v0, :pswitch_data_0

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown network type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 482
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net.tcp.buffersize."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 435
    :pswitch_0
    const-string v1, "gprs"

    .line 436
    goto :goto_0

    .line 438
    :pswitch_1
    const-string v1, "edge"

    .line 439
    goto :goto_0

    .line 441
    :pswitch_2
    const-string/jumbo v1, "umts"

    .line 442
    goto :goto_0

    .line 444
    :pswitch_3
    const-string v1, "hsdpa"

    .line 445
    goto :goto_0

    .line 447
    :pswitch_4
    const-string v1, "hsupa"

    .line 448
    goto :goto_0

    .line 450
    :pswitch_5
    const-string v1, "hspa"

    .line 451
    goto :goto_0

    .line 453
    :pswitch_6
    const-string v1, "hspap"

    .line 454
    goto :goto_0

    .line 456
    :pswitch_7
    const-string v1, "cdma"

    .line 457
    goto :goto_0

    .line 459
    :pswitch_8
    const-string v1, "1xrtt"

    .line 460
    goto :goto_0

    .line 462
    :pswitch_9
    const-string v1, "evdo"

    .line 463
    goto :goto_0

    .line 465
    :pswitch_a
    const-string v1, "evdo"

    .line 466
    goto :goto_0

    .line 468
    :pswitch_b
    const-string v1, "evdo"

    .line 469
    goto :goto_0

    .line 471
    :pswitch_c
    const-string v1, "iden"

    .line 472
    goto :goto_0

    .line 474
    :pswitch_d
    const-string v1, "lte"

    .line 475
    goto :goto_0

    .line 477
    :pswitch_e
    const-string v1, "ehrpd"

    .line 478
    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 408
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 411
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 832
    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 834
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 835
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 844
    :cond_0
    :goto_1
    return v2

    .line 838
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isVoiceIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 839
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 834
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isIdleGemini(I)Z
    .locals 4
    .param p1, "radioNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 1058
    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1060
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 1061
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 1072
    :cond_0
    :goto_1
    return v2

    .line 1066
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->isIdleGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 1067
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 1060
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isProvisioningNetwork()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 708
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 709
    .local v1, "msg":Landroid/os/Message;
    const v4, 0x42026

    iput v4, v1, Landroid/os/Message;->what:I

    .line 710
    const-string v4, "apnType"

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 711
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 712
    .local v2, "result":Landroid/os/Message;
    iget v4, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_0

    .line 717
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "result":Landroid/os/Message;
    .local v3, "retVal":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProvisioningNetwork: retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 718
    return v3

    .line 712
    .end local v3    # "retVal":Z
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "result":Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 713
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "result":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProvisioningNetwork: X "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 715
    const/4 v3, 0x0

    .restart local v3    # "retVal":Z
    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 254
    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, "retValue":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 570
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 587
    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 590
    :goto_0
    :pswitch_0
    return v0

    .line 574
    :pswitch_1
    const/4 v0, 0x1

    .line 575
    goto :goto_0

    .line 578
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    const/4 v0, 0x1

    .line 582
    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reconnectGemini(I)Z
    .locals 4
    .param p1, "radioNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 1026
    const/4 v0, 0x0

    .line 1029
    .local v0, "retValue":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1030
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnGemini(Ljava/lang/String;ZI)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1047
    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 1050
    :goto_0
    :pswitch_0
    return v0

    .line 1034
    :pswitch_1
    const/4 v0, 0x1

    .line 1035
    goto :goto_0

    .line 1038
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_0
    const/4 v0, 0x1

    .line 1042
    goto :goto_0

    .line 1030
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reconnectMSim(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "retValue":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnMSim(Ljava/lang/String;ZI)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 683
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 684
    return-void
.end method

.method sendIPAddrToHandler(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1279
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 5
    .param p1, "met"    # Z

    .prologue
    .line 662
    const-string v3, "apnType"

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 664
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: E met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 666
    .local v2, "msg":Landroid/os/Message;
    const v3, 0x4201f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 667
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 668
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 669
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v2    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 667
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 671
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X mAc was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "simId"    # I

    .prologue
    const/high16 v5, 0x70000

    .line 1124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDetailed state, old ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 1125
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-ne p1, v3, :cond_0

    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v3, v3, p4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_5

    .line 1127
    :cond_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .line 1128
    .local v2, "wasConnecting":Z
    :goto_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "lastReason":Ljava/lang/String;
    if-eqz v2, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 1136
    move-object p2, v0

    .line 1137
    :cond_1
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1138
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1139
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v3, v3, p4

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1141
    :cond_2
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1142
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    .end local v0    # "lastReason":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "wasConnecting":Z
    :cond_3
    :goto_1
    return-void

    .line 1127
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1143
    :cond_5
    if-eqz p2, :cond_3

    const-string/jumbo v3, "noSuchPdp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "apnFailed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_6
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_3

    .line 1144
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1145
    invoke-static {}, Landroid/net/MobileDataStateTracker;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1146
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;

    aget-object v3, v3, p4

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/net/NetworkInfo;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1148
    :cond_7
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1149
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 3
    .param p1, "enabled"    # I

    .prologue
    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableFailFastMobileData(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 652
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 653
    const v1, 0x42024

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 655
    :cond_0
    return-void
.end method

.method public setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "p"    # Landroid/net/LinkProperties;

    .prologue
    .line 1429
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1430
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyDataEnable(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 637
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 638
    const v2, 0x42020

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 640
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 642
    :cond_0
    return-void

    .line 638
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 5
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 599
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 604
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 605
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 606
    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 617
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set radio power to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    move v2, v3

    .line 618
    :goto_2
    return v2

    .line 611
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 604
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .param p1, "isRequested"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 556
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 625
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 626
    const v2, 0x4201e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 628
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 630
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: X enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 631
    return-void

    .line 626
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 154
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 155
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 157
    new-instance v2, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 159
    sget-object v2, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    sput-object v2, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.intent.action.NOTIFY_GLOBAL_ADDR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 176
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 177
    sget-object v2, Landroid/net/MobileDataStateTracker;->mMobileDataStateReceiver:Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->addTracker(Ljava/lang/String;Landroid/net/MobileDataStateTracker;)V

    .line 178
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 180
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 1002
    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 1007
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got supplyMessenger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 824
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 825
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 826
    return-void
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 491
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 492
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public teardownMSim(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnMSim(Ljava/lang/String;ZI)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public teardownGemini(I)Z
    .locals 4
    .param p1, "radioNum"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1017
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 1018
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnGemini(Ljava/lang/String;ZI)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 724
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 725
    .local v1, "writer":Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 726
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Mobile data state: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 727
    const-string v2, "Data enabled: user="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 728
    const-string v2, ", policy="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 729
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
