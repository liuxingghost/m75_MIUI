.class public Lcom/android/internal/telephony/PsArbitrator;
.super Landroid/os/Handler;
.source "PsArbitrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PsArbitrator$1;,
        Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;,
        Lcom/android/internal/telephony/PsArbitrator$PsArbitratorBroadCastReceiver;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x49000

.field private static final CMD_TO_STRING_COUNT:I = 0x15

.field protected static final DBG:Z = true

.field public static final EVENT_FLIGHT_MODE_OFF:I = 0x4900f

.field public static final EVENT_FLIGHT_MODE_ON:I = 0x4900e

.field public static final EVENT_PS_DECISION_CHANGED:I = 0x49000

.field public static final EVENT_PS_DECISION_PDP:I = 0x49012

.field public static final EVENT_PS_QUERY_PSDM:I = 0x49007

.field public static final EVENT_PS_SWITCH:I = 0x49001

.field public static final EVENT_PS_SWITCH_ATTACH:I = 0x49003

.field public static final EVENT_PS_SWITCH_CONFIRM:I = 0x49002

.field public static final EVENT_PS_SWITCH_DONE:I = 0x49005

.field public static final EVENT_PS_SWITCH_REJECT:I = 0x49011

.field public static final EVENT_RADIO_AVAILABLE_GSM:I = 0x4900c

.field public static final EVENT_RADIO_AVAILABLE_LTE:I = 0x4900a

.field public static final EVENT_RADIO_NOT_AVAILABLE_GSM:I = 0x4900d

.field public static final EVENT_RADIO_NOT_AVAILABLE_LTE:I = 0x4900b

.field public static final EVENT_RADIO_STATE_CHANGED:I = 0x49014

.field public static final EVENT_RESET_DECISION:I = 0x49013

.field public static final EVENT_SET_RAT_DETACH:I = 0x49008

.field public static final EVENT_SET_RAT_RESET_GPRS_MODE:I = 0x49009

.field public static final EVENT_SPECIAL_BAND_CHANGED:I = 0x49010

.field public static final EVENT_SWITCH_RESET_GPRS_MODE:I = 0x49004

.field public static final EVENT_SYNC_DATA_CALL_LIST:I = 0x49006

.field private static final LOG_TAG:Ljava/lang/String; = "PsArbitrator"

.field private static final MMDC_PSD_SWITCH_CAUSE_AP_QUERY:I = 0x4

.field private static final MMDC_PSD_SWITCH_CAUSE_AUTO_RESELECTION:I = 0x2

.field private static final MMDC_PSD_SWITCH_CAUSE_MANUAL_SELECTION:I = 0x1

.field private static final MMDC_PSD_SWITCH_CAUSE_NC0:I = 0x3

.field private static final MMDC_PSD_SWITCH_CAUSE_PSDM:I = 0x0

.field private static final MMDC_PSD_SWITCH_CAUSE_UNKNOWN:I = 0xff

.field public static final PSD_DECISION_AP:I = 0x2

.field public static final PSD_DECISION_OK:I = 0x1

.field public static final PSD_DECISION_QUERY:I = 0x4

.field public static final PSD_DECISION_REJECT:I = 0x0

.field private static final PS_DETACH_RETRY:I = 0x5

.field public static final PS_MODE_GSM:I = 0x0

.field public static final PS_MODE_LTE:I = 0x2

.field public static final PS_MODE_NONE:I = 0xff

.field public static final PS_MODE_UMTS:I = 0x1

.field public static final PS_PREFERRD_LTE:I = 0x0

.field public static final PS_PREFERRD_QUALITY:I = 0x1

.field public static final PS_PROTOCOL_1:I = 0x0

.field public static final PS_PROTOCOL_2:I = 0x1

.field private static final SM_NAME:Ljava/lang/String; = "PsArbitrator"

.field protected static final VDBG:Z

.field private static mIsSwitching:Z

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private isTurnOffLteBefore:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrentPsMode:I

.field private mDecisionPsMode:I

.field private mDetachRetry:I

.field private mInitDone:Z

.field private mIsAcceptPsdmSwitch:Z

.field private mIsBandReattach:Z

.field private mIsInDecisionFlow:Z

.field private mIsQueueEpsd:Z

.field protected mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

.field private mLteModemOn:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mNeedResetDecision:Z

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mQueueCause:I

.field private mQueueDecision:I

.field private mRat:I

.field protected mRil:Lcom/android/internal/telephony/RIL;

.field private mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_PS_DECISION_CHANGED"

    aput-object v1, v0, v3

    .line 144
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "EVENT_PS_SWITCH"

    aput-object v2, v0, v1

    .line 145
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "EVENT_PS_SWITCH_CONFIRM"

    aput-object v2, v0, v1

    .line 146
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "EVENT_PS_SWITCH_ATTACH"

    aput-object v2, v0, v1

    .line 147
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "EVENT_SWITCH_RESET_GPRS_MODE"

    aput-object v2, v0, v1

    .line 148
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "EVENT_PS_SWITCH_DONE"

    aput-object v2, v0, v1

    .line 149
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "EVENT_SYNC_DATA_CALL_LIST"

    aput-object v2, v0, v1

    .line 150
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "EVENT_PS_QUERY_PSDM"

    aput-object v2, v0, v1

    .line 151
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "EVENT_SET_RAT_DETACH"

    aput-object v2, v0, v1

    .line 152
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "EVENT_SET_RAT_RESET_GPRS_MODE"

    aput-object v2, v0, v1

    .line 153
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "EVENT_RADIO_AVAILABLE_LTE"

    aput-object v2, v0, v1

    .line 154
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "EVENT_RADIO_NOT_AVAILABLE_LTE"

    aput-object v2, v0, v1

    .line 155
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "EVENT_RADIO_AVAILABLE_GSM"

    aput-object v2, v0, v1

    .line 156
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "EVENT_RADIO_NOT_AVAILABLE_GSM"

    aput-object v2, v0, v1

    .line 157
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "EVENT_FLIGHT_MODE_ON"

    aput-object v2, v0, v1

    .line 158
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "EVENT_FLIGHT_MODE_OFF"

    aput-object v2, v0, v1

    .line 159
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "EVENT_SPECIAL_BAND_CHANGED"

    aput-object v2, v0, v1

    .line 160
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "EVENT_PS_SWITCH_REJECT"

    aput-object v2, v0, v1

    .line 161
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "EVENT_PS_DECISION_PDP"

    aput-object v2, v0, v1

    .line 162
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "EVENT_RESET_DECISION"

    aput-object v2, v0, v1

    .line 163
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "EVENT_RADIO_STATE_CHANGED"

    aput-object v2, v0, v1

    .line 183
    sput-boolean v3, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/telephony/RIL;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "ril"    # Lcom/android/internal/telephony/RIL;

    .prologue
    const v5, 0x42036

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    iput-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 172
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mInitDone:Z

    .line 179
    iput v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 180
    iput v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    .line 181
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    .line 182
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    .line 184
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    .line 185
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 186
    iput v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDetachRetry:I

    .line 187
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->isTurnOffLteBefore:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mNeedResetDecision:Z

    .line 194
    iput v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    .line 195
    iput v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    .line 220
    iput-object p1, p0, Lcom/android/internal/telephony/PsArbitrator;->mContext:Landroid/content/Context;

    .line 222
    const-string v0, "PsArbitrator constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 224
    iput-object p3, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    .line 226
    new-instance v0, Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PsArbitrator$MainThreadHandler;-><init>(Lcom/android/internal/telephony/PsArbitrator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mMainThreadHandler:Landroid/os/Handler;

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "PsArbitrator register PSDM decision change to RIL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/RIL;->registerForPsdmDecisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v1, 0x49014

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/RIL;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v1, 0x49013

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/RIL;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v1, 0x49013

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/RIL;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "PsArbitrator register PSDM decision change to LTEManager"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    invoke-virtual {v0, p0, v5, v2}, Lcom/android/internal/telephony/LteDcManager;->registerForPsdmDecisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    const v1, 0x4900a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/LteDcManager;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    const v1, 0x4900b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/LteDcManager;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->initBroadCastReceiver()V

    .line 247
    const-string v0, "PsArbitrator constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # I

    .prologue
    .line 198
    const v0, 0x49000    # 4.19E-40f

    sub-int/2addr p0, v0

    .line 199
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 200
    sget-object v0, Lcom/android/internal/telephony/PsArbitrator;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeRilQueue()V
    .locals 2

    .prologue
    .line 646
    const-string v0, "switch done and execute Ril queue"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 647
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 653
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v1, 0x49006

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    .line 658
    return-void

    .line 651
    :cond_0
    const-string v0, "new decision processing, don\'t reset isSwitching to false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getIsSwitching()Z
    .locals 1

    .prologue
    .line 324
    sget-boolean v0, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    return v0
.end method

.method private initBroadCastReceiver()V
    .locals 3

    .prologue
    .line 881
    new-instance v1, Lcom/android/internal/telephony/PsArbitrator$PsArbitratorBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/PsArbitrator$PsArbitratorBroadCastReceiver;-><init>(Lcom/android/internal/telephony/PsArbitrator;Lcom/android/internal/telephony/PsArbitrator$1;)V

    .line 882
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 883
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_LTE_MD_TYPE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method private onQueryDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 718
    const-string v0, "onQueryDone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 720
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 723
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 724
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decision = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRadioStateChange(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 745
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 747
    .local v0, "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 749
    const-string v1, "Radio state is not available, reset decision."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 750
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->resetDecision()V

    .line 753
    .end local v0    # "state":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_0
    return-void
.end method

.method private onResetGprsModeDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 596
    const-string v2, "onResetGprsModeDone: exception; likely radio not available, ignore, but attach follow keep going"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 603
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 604
    .local v0, "protocol":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResetGprsModeDone: mDecision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attach protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 605
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v3, 0x49005

    iget v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/RIL;->confirmPsSwitchAttach(ILandroid/os/Message;)V

    .line 612
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 613
    return-void

    .end local v0    # "protocol":I
    :cond_2
    move v0, v1

    .line 603
    goto :goto_0
.end method

.method private onSwitchPsAttachDone(Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 618
    return-void
.end method

.method private onSwitchPsConfirmDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 572
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 573
    const-string v2, "onSwitchPsConfirmDone: exception don\'t switch"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/PsArbitrator;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 577
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 578
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    .line 590
    :goto_0
    return-void

    .line 583
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 586
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    if-nez v2, :cond_1

    move v0, v1

    .line 587
    .local v0, "protocol":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchPsConfirmDone: mDecision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reset protocol(peer decision):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v3, 0x49004

    iget v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/RIL;->resetModeAfterSwitch(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private onSwitchPsDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 625
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 626
    const-string v0, "onSwitchPsDone: exception; switch CGATT fail, ignore this fail"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    if-nez v0, :cond_0

    .line 629
    const-string v0, "no other command in process, set mIsSwitching to false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchPsDone: mCurrentPsMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    goto :goto_0
.end method

.method private resetDecision()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 730
    const-string v0, "resetDecision"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 732
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->clearSettings()V

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->clearMmdcDataCmdsQueue()V

    .line 741
    :goto_0
    return-void

    .line 736
    :cond_0
    const-string v0, "Wait for decision processing"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 737
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 738
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mNeedResetDecision:Z

    goto :goto_0
.end method

.method private setProtocolSysProperty()V
    .locals 3

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "value":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 685
    :cond_0
    const-string v0, "0"

    .line 691
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProtocolSysProperty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 692
    const-string v1, "ril.epsd.protocol"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void

    .line 686
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-nez v1, :cond_2

    .line 687
    const-string v0, "1"

    goto :goto_0

    .line 689
    :cond_2
    const-string v0, "-1"

    goto :goto_0
.end method

.method private setSwitchingState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 696
    sput-boolean p1, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    .line 698
    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 699
    .local v0, "value":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 701
    const-string v1, "ril.epsd.switching"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-void

    .line 698
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private syncRilCurrentMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync to Ril: CurrentPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method private syncRilDecisionMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync to Ril: DecisionPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 675
    return-void
.end method


# virtual methods
.method public clearSettings()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 759
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 761
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 762
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 763
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    .line 765
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 767
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 768
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 770
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 772
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "PsArbitrator.dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->unregisterForPsdmDecisionChanged(Landroid/os/Handler;)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->unregisterForSimRecovery(Landroid/os/Handler;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->unregisterForSimPlugIn(Landroid/os/Handler;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LteDcManager;->unregisterForPsdmDecisionChanged(Landroid/os/Handler;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LteDcManager;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteDcManager:Lcom/android/internal/telephony/LteDcManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LteDcManager;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 270
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->dispose()V

    .line 259
    return-void
.end method

.method public getCurrentPsMode()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    return v0
.end method

.method public getDecisionPsMode()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    return v0
.end method

.method public getLteModemOn()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    return v0
.end method

.method public getRil()Lcom/android/internal/telephony/RIL;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    return-object v0
.end method

.method public getUsingProtocol()I
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "protocol":I
    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    .line 311
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "info":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/PsArbitrator;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PsArbitrator handleMessage msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 779
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 874
    const-string v2, "Unexpect!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 878
    :goto_0
    return-void

    .line 782
    :sswitch_0
    const-string v2, "EVENT_PSDM_DECISION_CHANGED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 783
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onDecisionChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 787
    :sswitch_1
    const-string v2, "EVENT_PSDM_DECISION_CHANGED done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 788
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    goto :goto_0

    .line 793
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onLteRadioOff(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 798
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onLteRadioOn(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 803
    :sswitch_4
    const-string v2, "EVENT_PS_SWITCH_CONFIRM done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 804
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onSwitchPsConfirmDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 809
    :sswitch_5
    const-string v2, "EVENT_PS_SWITCH_ATTACH done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 810
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onSwitchPsAttachDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 815
    :sswitch_6
    const-string v2, "EVENT_SWITCH_RESET_GPRS_MODE done"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 816
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onResetGprsModeDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 821
    :sswitch_7
    const-string v2, "EVENT_PS_SWITCH_DONE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 822
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onSwitchPsDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 827
    :sswitch_8
    iget-boolean v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    if-nez v2, :cond_0

    .line 829
    iget-object v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/RIL;->SyncNotifyDataCallList(Landroid/os/AsyncResult;)V

    .line 834
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    if-eqz v2, :cond_1

    .line 835
    const-string v2, "EVENT_SYNC_DATA_CALL_LIST done, wait for next decision end, will executeMmdcDataCmdsQueue"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 836
    const v2, 0x49012

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 831
    :cond_0
    const-string v2, "new decision processing, don\'t SyncNotifyDataCallList to DCC"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 838
    :cond_1
    const-string v2, "EVENT_SYNC_DATA_CALL_LIST done, then trigger Ril executeMmdcDataCmdsQueue"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 839
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 840
    iget-object v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 846
    :sswitch_9
    const-string v2, "EVENT_PS_SWITCH_REJECT done, wait for next EPSD"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 847
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    goto/16 :goto_0

    .line 851
    :sswitch_a
    const-string v2, "EVENT_PS_DECISION_POP, wait for next EPSD"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 852
    const/4 v2, 0x2

    new-array v0, v2, [I

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    aput v2, v0, v4

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    aput v2, v0, v5

    .line 853
    .local v0, "result":[I
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 854
    .local v1, "tmpAr":Landroid/os/AsyncResult;
    iput-boolean v4, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 855
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->onDecisionChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 859
    .end local v0    # "result":[I
    .end local v1    # "tmpAr":Landroid/os/AsyncResult;
    :sswitch_b
    const-string v2, "EVENT_PS_QUERY_PSDM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 860
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onQueryDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 864
    :sswitch_c
    const-string v2, "EVENT_RESET_DECISION"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 865
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->resetDecision()V

    goto/16 :goto_0

    .line 869
    :sswitch_d
    const-string v2, "EVENT_RADIO_STATE_CHANGED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 870
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PsArbitrator;->onRadioStateChange(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 779
    nop

    :sswitch_data_0
    .sparse-switch
        0x42036 -> :sswitch_0
        0x49002 -> :sswitch_4
        0x49003 -> :sswitch_5
        0x49004 -> :sswitch_6
        0x49005 -> :sswitch_7
        0x49006 -> :sswitch_8
        0x49007 -> :sswitch_b
        0x4900a -> :sswitch_3
        0x4900b -> :sswitch_2
        0x49010 -> :sswitch_1
        0x49011 -> :sswitch_9
        0x49012 -> :sswitch_a
        0x49013 -> :sswitch_c
        0x49014 -> :sswitch_d
    .end sparse-switch
.end method

.method public isAcceptPsdmSwitch()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 904
    const-string v0, "PsArbitrator"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 908
    const-string v0, "PsArbitrator"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    return-void
.end method

.method protected onDecisionChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v11, 0x49002

    const/16 v10, 0xff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 383
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v5

    const/4 v8, 0x7

    if-ne v5, v8, :cond_0

    .line 385
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 386
    const-string v5, "onDecisionChanged(ar): exception; likely radio not available, ignore"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    iput-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 392
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "mobile_data"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    .line 394
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "preferred_network_mode"

    const/16 v9, 0x9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    .line 396
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-eq v5, v10, :cond_3

    move v1, v6

    .line 397
    .local v1, "isNowHasPs":Z
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 398
    .local v2, "newDecision":I
    const/4 v0, 0x0

    .line 405
    .local v0, "cause":I
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    if-eqz v5, :cond_4

    .line 406
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v7

    iput v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    .line 407
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v6

    iput v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDecisionChanged(ar): queue this Decision:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", cause:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 409
    iput-boolean v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    goto :goto_0

    .end local v0    # "cause":I
    .end local v1    # "isNowHasPs":Z
    .end local v2    # "newDecision":I
    :cond_2
    move v5, v7

    .line 392
    goto :goto_1

    :cond_3
    move v1, v7

    .line 396
    goto :goto_2

    .line 413
    .restart local v0    # "cause":I
    .restart local v1    # "isNowHasPs":Z
    .restart local v2    # "newDecision":I
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 414
    const-string v5, "onDecisionChanged(ar): start"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 417
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mNeedResetDecision:Z

    if-ne v5, v6, :cond_5

    .line 418
    const-string v5, "Reset Decision Queue"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 419
    iput-boolean v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mNeedResetDecision:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->clearSettings()V

    .line 421
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->clearMmdcDataCmdsQueue()V

    goto/16 :goto_0

    .line 428
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    if-eqz v5, :cond_a

    .line 429
    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueDecision:I

    .line 430
    iget v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mQueueCause:I

    .line 431
    const-string v5, "Pop Queue Decision"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 432
    iput-boolean v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 440
    :goto_3
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-nez v5, :cond_b

    move v4, v6

    .line 441
    .local v4, "oldProtocol":I
    :goto_4
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-ne v5, v10, :cond_6

    const/4 v4, -0x1

    .line 442
    :cond_6
    if-nez v2, :cond_c

    move v3, v6

    .line 443
    .local v3, "newProtocol":I
    :goto_5
    if-ne v2, v10, :cond_7

    const/4 v3, -0x1

    .line 445
    :cond_7
    if-nez v3, :cond_8

    iput-boolean v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 446
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRat:I

    if-ne v5, v6, :cond_9

    iput-boolean v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 448
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current mode = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", old decision = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New decision = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", cause : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New Protocol / old Protocol: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserDataEnabled: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "mLteModemOn: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 458
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    if-eqz v5, :cond_d

    .line 459
    const-string v5, "B3/B39 reattach, reject this epsd"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 460
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v6, 0x49011

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v6, v8, v7}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v2, v6}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 435
    .end local v3    # "newProtocol":I
    .end local v4    # "oldProtocol":I
    :cond_a
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v7

    .line 436
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v0, v5, v6

    goto/16 :goto_3

    :cond_b
    move v4, v7

    .line 440
    goto/16 :goto_4

    .restart local v4    # "oldProtocol":I
    :cond_c
    move v3, v7

    .line 442
    goto/16 :goto_5

    .line 467
    .restart local v3    # "newProtocol":I
    :cond_d
    if-ne v3, v4, :cond_f

    if-eqz v1, :cond_f

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[C1]newDecision/currentPs:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", no need to switch!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 474
    const-string v5, "[C1]3/4G interRat, no need to switch"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 475
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 476
    invoke-virtual {p0, v2, v7}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 480
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    if-eqz v5, :cond_e

    .line 481
    const-string v5, "Next decision to be handled"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 482
    const v5, 0x49012

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 484
    :cond_e
    const-string v5, "EVENT_SYNC_DATA_CALL_LIST done, then trigger Ril executeMmdcDataCmdsQueue"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 485
    iput-boolean v7, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 486
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 491
    :cond_f
    if-eq v3, v4, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->isAcceptPsdmSwitch()Z

    move-result v5

    if-nez v5, :cond_10

    if-eq v0, v6, :cond_10

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    const/4 v5, 0x4

    if-ne v0, v5, :cond_13

    .line 507
    :cond_10
    if-nez v1, :cond_11

    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    if-ne v5, v10, :cond_12

    .line 512
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[C2]newDecision/currentPs:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", need to switch!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 513
    const-string v5, "[C2]Normal switch case"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 516
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 517
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 520
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v11, v8, v7}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 526
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C4]newDecision/currentPs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", need to switch!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 527
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    goto/16 :goto_0

    .line 531
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->isAcceptPsdmSwitch()Z

    move-result v5

    if-nez v5, :cond_14

    if-eq v0, v6, :cond_14

    .line 534
    const-string v5, "[C5]Reject the PSDM switch suggestion!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 536
    iget-object v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    iget v6, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v2, v6}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 540
    :cond_14
    iget-boolean v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mUserDataEnabled:Z

    if-eqz v5, :cond_15

    .line 546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[C6]newDecision/currentPs:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", need to switch!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 547
    const-string v5, "[C6]Data Enable case"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PsArbitrator;->setSwitchingState(Z)V

    .line 550
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    .line 551
    iget v5, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/PsArbitrator;->updateCurrentPsMode(IZ)V

    .line 552
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->executeRilQueue()V

    goto/16 :goto_0

    .line 557
    :cond_15
    const-string v5, "[C7]No Ps now"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 558
    iput v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    goto/16 :goto_0
.end method

.method protected onLteRadioOff(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 274
    const-string v0, "Radio 1 off reset Ps Arbitrator state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 275
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 281
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsInDecisionFlow:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsQueueEpsd:Z

    .line 283
    return-void
.end method

.method protected onLteRadioOn(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 286
    const-string v0, "Radio 1 on reset Ps Arbitrator state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mLteModemOn:Z

    .line 288
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public setAcceptPsdmSwitch(Z)V
    .locals 2
    .param p1, "accept"    # Z

    .prologue
    .line 712
    const-string v0, "setAcceptPsdmSwitch E, mIsAcceptPsdmSwitch"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 713
    iput-boolean p1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcceptPsdmSwitch X, mIsAcceptPsdmSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsAcceptPsdmSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public setApDecisionPsMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ap set decision to PSDM: DecisionPSMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CurrentPsMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    const v2, 0x49002

    iget v3, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/RIL;->confirmPsSwitch(IILandroid/os/Message;)V

    .line 353
    return-void
.end method

.method public setPsReattach()V
    .locals 2

    .prologue
    .line 331
    sget-boolean v0, Lcom/android/internal/telephony/PsArbitrator;->mIsSwitching:Z

    if-nez v0, :cond_0

    .line 332
    const-string v0, "send EVENT_SPECIAL_BAND_CHANGED to reattach"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    const v1, 0x49010

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PsArbitrator;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->requestPsReattach(Landroid/os/Message;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mIsBandReattach:Z

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string v0, "Ignore EVENT_SPECIAL_BAND_CHANGED when switching"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncRilPsMode()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    iput v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mDecisionMode:I

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/PsArbitrator;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilPsArbitrator()Lcom/android/internal/telephony/RIL$RilPsArbitrator;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    iput v1, v0, Lcom/android/internal/telephony/RIL$RilPsArbitrator;->mCurrentMode:I

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync to Ril: DecisionPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CurrentPsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PsArbitrator]targetRat/currentRat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mDecisionPsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "ps_state":Ljava/lang/String;
    return-object v0
.end method

.method public updateCurrentPsMode(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCurrentPsMode: new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PsArbitrator;->log(Ljava/lang/String;)V

    .line 365
    iput p1, p0, Lcom/android/internal/telephony/PsArbitrator;->mCurrentPsMode:I

    .line 366
    invoke-direct {p0}, Lcom/android/internal/telephony/PsArbitrator;->setProtocolSysProperty()V

    .line 368
    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/PsArbitrator;->syncRilPsMode()V

    .line 372
    :cond_0
    return-void
.end method
