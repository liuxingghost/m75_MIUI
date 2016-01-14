.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccController$2;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_MODEM:Ljava/lang/String; = "android.intent.action.sim.ACTION_RESET_MODEM"

.field protected static final APPLICATION_INDEX_ISIM:I = 0x0

.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field protected static final EVENT_APPLICATION_SESSION_CHANGED:I = 0xca

.field protected static final EVENT_GET_ICC_APPLICATION_STATUS:I = 0xc9

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING:I = 0x6a

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY:I = 0x6b

.field protected static final EVENT_HOTSWAP_GET_ICC_STATUS_DONE:I = 0x6f

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field protected static final EVENT_INVALID_SIM_DETECTED:I = 0x72

.field protected static final EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0x6c

.field protected static final EVENT_QUERY_SIM_MISSING:I = 0x71

.field protected static final EVENT_QUERY_SIM_MISSING_STATUS:I = 0x68

.field protected static final EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN:I = 0x70

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x64

.field protected static final EVENT_REPOLL_SML_STATE:I = 0x73

.field protected static final EVENT_SIM_MISSING:I = 0x67

.field protected static final EVENT_SIM_PLUG_IN:I = 0x6e

.field protected static final EVENT_SIM_PLUG_OUT:I = 0x6d

.field protected static final EVENT_SIM_RECOVERY:I = 0x69

.field protected static final EVENT_TURN_ON_ISIM_APPLICATION_DONE:I = 0xc8

.field protected static final EVENT_VIRTUAL_SIM_OFF:I = 0x66

.field protected static final EVENT_VIRTUAL_SIM_ON:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field private static final SML_FEATURE_NEED_BROADCAST_INTENT:I = 0x1

.field private static final SML_FEATURE_NO_NEED_BROADCAST_INTENT:I

.field private static mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;

.field private static mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;


# instance fields
.field private UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

.field private UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

.field private mApplicationChangedRegistrants:Landroid/os/RegistrantList;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mClearMsisdn:Z

.field private mContext:Landroid/content/Context;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwap:Z

.field private mRecoveryRegistrants:Landroid/os/RegistrantList;

.field private mSessionId:[I

.field private mSimId:I

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 143
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 144
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 181
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IUiccControllerExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IUiccControllerExt;

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 624
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z

    .line 156
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 157
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 161
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSessionId:[I

    .line 162
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    .line 164
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

    .line 171
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    .line 823
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 625
    const-string v1, "Creating UiccController"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 626
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 627
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 628
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 631
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 635
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x64

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 637
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 638
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x66

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x67

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 640
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x69

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6d

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 642
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x72

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInvalidSimDetected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xca

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSessionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 646
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v1, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 653
    return-void

    .line 161
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x20500ce
        0x20500cf
        0x20500d0
        0x20500d1
    .end array-data

    .line 171
    :array_2
    .array-data 4
        0x20500c9
        0x20500ca
        0x20500cb
        0x20500cc
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "simId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 655
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z

    .line 156
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 157
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 161
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSessionId:[I

    .line 162
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    .line 164
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

    .line 171
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    .line 823
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating UiccController simId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 657
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 658
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 659
    iput p3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 662
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 663
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 664
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x66

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x67

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 666
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x69

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6d

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x72

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInvalidSimDetected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 670
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xca

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSessionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 672
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 673
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v1, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    return-void

    .line 161
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x20500ce
        0x20500cf
        0x20500d0
        0x20500d1
    .end array-data

    .line 171
    :array_2
    .array-data 4
        0x20500c9
        0x20500ca
        0x20500cb
        0x20500cc
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/uicc/UiccController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/uicc/UiccController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z

    return p1
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .prologue
    .line 216
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 221
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "simId"    # I

    .prologue
    .line 226
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 238
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getSimMissingStatus()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->detectSimMissing(Landroid/os/Message;)V

    .line 821
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 738
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UiccController][SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 188
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v3, v0, v2

    .line 193
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "simId"    # I

    .prologue
    .line 198
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v3, v0, v2

    .line 210
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private declared-synchronized onGetIccApplicationStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 919
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 920
    const-string v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SIM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Error getting ICC status. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RIL_REQUEST_GET_ICC_APPLICATION_STATUS should "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "never return an error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :goto_0
    monitor-exit p0

    return-void

    .line 926
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 928
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v1, :cond_1

    .line 930
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 935
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 919
    .end local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 933
    .restart local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 683
    const-string v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SIM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Error getting ICC status. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "RIL_REQUEST_GET_ICC_STATUS should "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "never return an error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_0
    monitor-exit p0

    return-void

    .line 689
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 691
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_1

    .line 692
    const-string v1, "onGetIccCardStatusDone, disableSimMissingNotification because card is present"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v1, :cond_2

    .line 698
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 704
    :goto_1
    const-string v1, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 682
    .end local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 701
    .restart local v0    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Z)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isUpdateSiminfo"    # Z

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Error getting ICC status. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RIL_REQUEST_GET_ICC_STATUS should "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "never return an error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :goto_0
    monitor-exit p0

    return-void

    .line 716
    :cond_0
    :try_start_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 718
    .local v3, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 719
    const-string v0, "onGetIccCardStatusDone, disableSimMissingNotification because card is present"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_2

    .line 726
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 732
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying IccChangedRegistrants, isUpdateSiminfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 709
    .end local v3    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 729
    .restart local v3    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private removeNotificationVirtual(I)V
    .locals 3
    .param p1, "notifyType"    # I

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 765
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 766
    return-void
.end method

.method private setNotification(I)V
    .locals 8
    .param p1, "notifyType"    # I

    .prologue
    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotification(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 796
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 797
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 798
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 799
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 800
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 801
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 803
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingDetail(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 806
    .local v0, "detail":Ljava/lang/CharSequence;
    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 807
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 808
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 809
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 810
    return-void
.end method

.method private setNotificationVirtual(I)V
    .locals 9
    .param p1, "notifyType"    # I

    .prologue
    const v8, 0x20500cd

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotification(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 743
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 744
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 745
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 746
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 747
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 748
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 749
    const/4 v4, 0x0

    .line 753
    .local v4, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 755
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "detail":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 758
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 759
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 760
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 761
    return-void
.end method


# virtual methods
.method public disableSimMissingNotification()V
    .locals 3

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 815
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v1

    add-int/lit8 v1, v1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 816
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccChangedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIccChangedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 954
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 955
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 956
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 959
    :cond_1
    return-void
.end method

.method public getIccApplicationChannel(I)I
    .locals 4
    .param p1, "family"    # I

    .prologue
    .line 286
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 293
    :try_start_0
    const-string v1, "unknown application"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 296
    :goto_0
    monitor-exit v2

    return v0

    .line 290
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSessionId:[I

    const/4 v3, 0x0

    aget v0, v1, v3

    .line 291
    goto :goto_0

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getIccFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 274
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 277
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    monitor-exit v2

    .line 281
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 261
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 264
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    monitor-exit v2

    .line 268
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    .line 244
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v1

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "family"    # I

    .prologue
    .line 251
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    monitor-exit v1

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 335
    sget-object v24, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v24

    .line 336
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 619
    const-string v1, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    :goto_0
    monitor-exit v24

    .line 622
    :goto_1
    return-void

    .line 338
    :sswitch_0
    const-string v1, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 342
    :sswitch_1
    :try_start_1
    const-string v1, "Received EVENT_GET_ICC_STATUS_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 344
    .local v10, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    .line 347
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string v1, "Received EVENT_RADIO_AVAILABLE"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->getSimMissingStatus()V

    goto :goto_0

    .line 354
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 355
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 356
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 357
    .local v21, "result":[I
    if-eqz v21, :cond_3

    const/4 v1, 0x0

    aget v1, v21, v1

    if-nez v1, :cond_3

    .line 358
    const-string v1, "EVENT_QUERY_SIM_MISSING_STATUS, execute notifySimMissing"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->notifySimMissing()V

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 362
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 363
    .local v15, "enCryState":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ready to update SIM info because SIM not found, enCryState: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v15, :cond_2

    move-object v1, v15

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 364
    if-eqz v15, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 366
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/DefaultSIMSettings;->onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 363
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v1, "null"

    goto :goto_2

    .line 370
    .end local v15    # "enCryState":Ljava/lang/String;
    :cond_3
    if-eqz v21, :cond_4

    const/4 v1, 0x0

    aget v1, v21, v1

    const/16 v4, 0xe

    if-ne v1, v4, :cond_4

    .line 371
    const-string v1, "EVENT_QUERY_SIM_MISSING_STATUS, SIM busy and execute again"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->getSimMissingStatus()V

    goto/16 :goto_0

    .line 375
    :cond_4
    if-nez v21, :cond_5

    .line 376
    const-string v1, "EVENT_QUERY_SIM_MISSING_STATUS, card is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_5
    const-string v1, "EVENT_QUERY_SIM_MISSING_STATUS, card is present"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 387
    .end local v21    # "result":[I
    :cond_6
    const-string v1, "EVENT_QUERY_SIM_MISSING_STATUS, exception"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    const-string v1, "handleMessage (EVENT_VIRTUAL_SIM_ON),MTK_GEMINI_SUPPORT off"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 404
    const/16 v1, 0x65

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setNotificationVirtual(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v4, "AutoAnswer"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 406
    .local v23, "shOn":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 407
    .local v14, "editorOn":Landroid/content/SharedPreferences$Editor;
    const-string v1, "flag"

    const/4 v4, 0x1

    invoke-interface {v14, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 411
    .end local v14    # "editorOn":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "shOn":Landroid/content/SharedPreferences;
    :sswitch_5
    const-string v1, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 413
    const/16 v1, 0x65

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->removeNotificationVirtual(I)V

    .line 414
    const/16 v1, 0x67

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setNotification(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v4, "AutoAnswer"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 416
    .local v22, "shOff":Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 417
    .local v13, "editorOff":Landroid/content/SharedPreferences$Editor;
    const-string v1, "flag"

    const/4 v4, 0x0

    invoke-interface {v13, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 421
    .end local v13    # "editorOff":Landroid/content/SharedPreferences$Editor;
    .end local v22    # "shOff":Landroid/content/SharedPreferences;
    :sswitch_6
    const-string v1, "handleMessage (EVENT_SIM_RECOVERY)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    .line 427
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v17, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 432
    .end local v17    # "intent":Landroid/content/Intent;
    :sswitch_7
    const-string v1, "handleMessage (EVENT_SIM_MISSING)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 433
    const/16 v1, 0x67

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setNotification(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 437
    :sswitch_8
    const-string v1, "handleMessage (EVENT_SIM_PLUG_OUT)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 438
    const/16 v1, 0x67

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setNotification(I)V

    .line 440
    const/16 v16, 0x0

    .line 441
    .local v16, "gsmPhone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 442
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 443
    check-cast v16, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v16    # "gsmPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->onSimHotSwap(IZ)V

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 448
    :sswitch_9
    const-string v1, "handleMessage (EVENT_SIM_PLUG_IN)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x70

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->detectSimMissing(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 453
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x70

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->detectSimMissing(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 456
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 457
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9

    .line 458
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 459
    .restart local v21    # "result":[I
    if-nez v21, :cond_7

    .line 460
    const-string v1, "should not happen this one, ril_sim will always return success when query sim missing"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 463
    .local v11, "defaultPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    aget v1, v21, v1

    sparse-switch v1, :sswitch_data_1

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 485
    .local v8, "airplaneMode":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dual_sim_mode_setting"

    const/4 v5, 0x3

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 490
    .local v12, "dualSimMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplaneMode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " dualSimMode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 491
    if-nez v8, :cond_8

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v4

    shl-int/2addr v1, v4

    and-int/2addr v1, v12

    if-lez v1, :cond_8

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 497
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 465
    .end local v8    # "airplaneMode":I
    .end local v12    # "dualSimMode":I
    :sswitch_c
    const-string v1, "EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN, card is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 466
    const/16 v1, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->sendEmptyMessage(I)Z

    .line 468
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 469
    check-cast v11, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v11    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->plugInNoSimSlot(I)V

    goto/16 :goto_0

    .line 473
    .restart local v11    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    :sswitch_d
    const-string v1, "SIM busy, retry query missing status 100ms later"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 474
    const/16 v1, 0x71

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 503
    .end local v11    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    .end local v21    # "result":[I
    :cond_9
    const-string v1, "EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN, exception"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    const-string v1, "handleMessage (EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 508
    const/4 v3, 0x0

    .line 509
    .local v3, "iccid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 511
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_b

    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_b

    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 512
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v3    # "iccid":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 513
    .restart local v3    # "iccid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IccId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 524
    :goto_3
    const/16 v16, 0x0

    .line 525
    .restart local v16    # "gsmPhone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 526
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 527
    check-cast v16, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v16    # "gsmPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->onSimHotSwap(IZ)V

    .line 529
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 530
    .restart local v15    # "enCryState":Ljava/lang/String;
    if-eqz v15, :cond_a

    const-string v1, ""

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/DefaultSIMSettings;->onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 515
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v15    # "enCryState":Ljava/lang/String;
    :cond_b
    const-string v1, "iccid error"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 536
    .end local v3    # "iccid":Ljava/lang/String;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string v1, "Received EVENT_HOTSWAP_GET_ICC_STATUS_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 538
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Z)V

    goto/16 :goto_0

    .line 541
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string v1, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 543
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Z)V

    .line 545
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    const-string v1, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 547
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Z)V

    goto/16 :goto_0

    .line 550
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const-string v1, "handleMessage (EVENT_INVALID_SIM_DETECTED)"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 551
    const/16 v1, 0x67

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setNotification(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 555
    :sswitch_13
    const-string v1, "Received EVENT_REPOLL_SML_STATE"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 557
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    const/16 v20, 0x1

    .line 560
    .local v20, "needIntent":Z
    :goto_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Z)V

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_0

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v9

    .line 565
    .local v9, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v9, :cond_d

    .line 566
    const-string v1, "UiccCardApplication = null"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    .end local v9    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v20    # "needIntent":Z
    :cond_c
    const/16 v20, 0x0

    goto :goto_4

    .line 569
    .restart local v9    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v20    # "needIntent":Z
    :cond_d
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v4, :cond_0

    .line 570
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v19, "it":Landroid/content/Intent;
    if-nez v19, :cond_e

    .line 572
    const-string v1, "UiccController"

    const-string v4, "New intent failed"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    monitor-exit v24

    goto/16 :goto_1

    .line 575
    :cond_e
    const-string v1, "Broadcast ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 576
    const-string v1, "com.android.phone.ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v1, "com.android.phone.EXTRA_SIM_SLOT"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const-string v1, "com.android.phone.EXTRA_UNLOCK_TYPE"

    const/16 v4, 0x1f7

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string v1, "com.android.phone.EXTRA_SIMME_LOCK_TYPE"

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 587
    .end local v9    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "it":Landroid/content/Intent;
    .end local v20    # "needIntent":Z
    :sswitch_14
    const-string v1, "Received EVENT_TURN_ON_ISIM_APPLICATION_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 589
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    .line 590
    const-string v1, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Error turn on ISIM. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    monitor-exit v24

    goto/16 :goto_1

    .line 595
    :cond_f
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 596
    .local v18, "ints":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    aget v4, v18, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Session ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    aget v4, v18, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSessionId:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget v5, v18, v5

    aput v5, v1, v4

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSessionId:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0xc9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccApplicationStatus(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 604
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "ints":[I
    :sswitch_15
    const-string v1, "Received EVENT_GET_ICC_APPLICATION_STATUS"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 606
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccApplicationStatusDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 610
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    const-string v1, "Received EVENT_APPLICATION_SESSION_CHANGED"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 614
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 615
    .restart local v21    # "result":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    aget v4, v21, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", Session = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    aget v4, v21, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSessionId:[I

    const/4 v4, 0x0

    aget v4, v21, v4

    const/4 v5, 0x1

    aget v5, v21, v5

    aput v5, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 336
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_7
        0x68 -> :sswitch_3
        0x69 -> :sswitch_6
        0x6a -> :sswitch_10
        0x6b -> :sswitch_11
        0x6c -> :sswitch_e
        0x6d -> :sswitch_8
        0x6e -> :sswitch_9
        0x6f -> :sswitch_f
        0x70 -> :sswitch_b
        0x71 -> :sswitch_a
        0x72 -> :sswitch_12
        0x73 -> :sswitch_13
        0xc8 -> :sswitch_14
        0xc9 -> :sswitch_15
        0xca -> :sswitch_16
    .end sparse-switch

    .line 463
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_c
        0xe -> :sswitch_d
    .end sparse-switch
.end method

.method public parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePersoType, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 777
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 791
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 779
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 783
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 785
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 787
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 903
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 904
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 905
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 908
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 909
    monitor-exit v2

    .line 910
    return-void

    .line 909
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 301
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 302
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 306
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 307
    monitor-exit v2

    .line 308
    return-void

    .line 307
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 318
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 319
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 323
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 324
    monitor-exit v2

    .line 325
    return-void

    .line 324
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public repollIccStateForModemSmlChangeFeatrue(Z)V
    .locals 4
    .param p1, "needIntent"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 771
    if-ne p1, v0, :cond_0

    .line 772
    .local v0, "arg1":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x73

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 773
    return-void

    .end local v0    # "arg1":I
    :cond_0
    move v0, v1

    .line 771
    goto :goto_0
.end method

.method public unregisterForApplicationChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 913
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 915
    monitor-exit v1

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 311
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 313
    monitor-exit v1

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccRecovery(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 328
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
