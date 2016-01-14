.class public Lcom/android/internal/telephony/LteDcConfigHandler;
.super Landroid/os/Handler;
.source "LteDcConfigHandler.java"


# static fields
.field private static final AUTO_SELECT_DISABLE:I = -0x62

.field private static final DEFAULT_3G_SLOT:I = 0x0

.field private static final EVENT_RADIO_ON_1:I = 0xa

.field private static final EVENT_RADIO_ON_2:I = 0xb

.field private static final EVENT_RADIO_ON_SGLTE_1:I = 0x3fc

.field private static final EVENT_RADIO_ON_SGLTE_2:I = 0x3fd

.field private static final EVENT_SET_RAT_GSM_ONLY:I = 0x0

.field private static final EVENT_SET_RAT_LTE_GSM_WCDMA:I = 0x2

.field private static final EVENT_SET_RAT_WCDMA_PREF:I = 0x1

.field private static final ICC_CARD_TYPE_SIM:I = 0x1

.field private static final ICC_CARD_TYPE_UNKNOWN:I = 0x0

.field private static final ICC_CARD_TYPE_USIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final MCC_TABLE_LAB_TEST:[Ljava/lang/String;

.field private static final NO_3G_CAPABILITY:I = -0x1

.field private static final PLMN_TABLE_LAB_TEST:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PREFERRED_RAT_SYSTEM:I = 0x1

.field private static final PREFERRED_RAT_USER:I = 0x0

.field private static final UNKNOWN_3G_SLOT:I = -0x63

.field private static isInitRatModeDone:[Z

.field private static isRoaming:Z

.field private static mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

.field private static sContext:Landroid/content/Context;

.field private static sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sGsmPhone:[Lcom/android/internal/telephony/Phone;

.field private static sIccCardType:[I

.field private static sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static sImsi:[Ljava/lang/String;

.field private static sLteCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sLteModemSwitchHandler:Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;

.field private static sLtePhone:[Lcom/android/internal/telephony/Phone;

.field private static sMajorSlot:I

.field private static sPhone:Lcom/android/internal/telephony/Phone;

.field private static sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

.field private static sUserType:[I


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "46009"

    aput-object v1, v0, v5

    const-string v1, "45407"

    aput-object v1, v0, v6

    const-string v1, "46005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "45502"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 109
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "001"

    aput-object v1, v0, v3

    const-string v1, "002"

    aput-object v1, v0, v4

    const-string v1, "003"

    aput-object v1, v0, v5

    const-string v1, "004"

    aput-object v1, v0, v6

    const-string v1, "005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "007"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "008"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "009"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "010"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "011"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "012"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->MCC_TABLE_LAB_TEST:[Ljava/lang/String;

    .line 113
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "46004"

    aput-object v1, v0, v3

    const-string v1, "46602"

    aput-object v1, v0, v4

    const-string v1, "50270"

    aput-object v1, v0, v5

    const-string v1, "46003"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->PLMN_TABLE_LAB_TEST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    new-instance v2, Lcom/android/internal/telephony/LteDcConfigHandler$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/LteDcConfigHandler$1;-><init>(Lcom/android/internal/telephony/LteDcConfigHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LteDcConfigHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sLtePhone:[Lcom/android/internal/telephony/Phone;

    .line 120
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    .line 121
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 122
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 132
    const-string v2, "Single Card Project"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 133
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v4

    .line 134
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sLtePhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getLteDcPhone(I)Lcom/android/internal/telephony/gsm/LteDcPhone;

    move-result-object v3

    aput-object v3, v2, v4

    .line 135
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sLtePhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v4

    .line 136
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v4

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    new-instance v2, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;

    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;-><init>([Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sLteModemSwitchHandler:Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 143
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sLteCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit16 v3, v0, 0x3fc

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0xa

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v2, "android.intent.action.SERVICE_STATE_LTE_DC"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSimSwitchSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    sget-object v2, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_CAPABILITY_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const/16 v2, -0x63

    sput v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    .line 152
    const-string v2, "3G Switch Supported"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 158
    .end local v0    # "i":I
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    .line 159
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/LteDcConfigHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 161
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 162
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;

    .line 163
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    .line 164
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->isInitRatModeDone:[Z

    .line 165
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sUserType:[I

    .line 166
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 167
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 168
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    aput v4, v2, v0

    .line 169
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->isInitRatModeDone:[Z

    aput-boolean v4, v2, v0

    .line 170
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sUserType:[I

    aput v4, v2, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 154
    :cond_2
    sput v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    .line 155
    const-string v2, "3G Switch Not Supported"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_3
    sput-boolean v4, Lcom/android/internal/telephony/LteDcConfigHandler;->isRoaming:Z

    .line 173
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 175
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 176
    const/16 v2, -0x62

    sput v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    .line 180
    :goto_3
    return-void

    .line 178
    :cond_4
    const-string v2, "Auto select enable"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100()[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/LteDcConfigHandler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LteDcConfigHandler;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->contain4gRat(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/LteDcConfigHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LteDcConfigHandler;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setDesiredRatMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/LteDcConfigHandler;Landroid/telephony/ServiceState;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LteDcConfigHandler;
    .param p1, "x1"    # Landroid/telephony/ServiceState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleServiceStateChanged(Landroid/telephony/ServiceState;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/LteDcConfigHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LteDcConfigHandler;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleSimSwitched()V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sUserType:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    return-object v0
.end method

.method static synthetic access$400()[Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->isInitRatModeDone:[Z

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->getCapabilitySim()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/LteDcConfigHandler;->getImsi(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/LteDcConfigHandler;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LteDcConfigHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/LteDcConfigHandler;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LteDcConfigHandler;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->getIccCardType(I)I

    move-result v0

    return v0
.end method

.method private contain4gRat(I)Z
    .locals 1
    .param p1, "ratMode"    # I

    .prologue
    .line 406
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    .line 411
    :cond_0
    const/4 v0, 0x1

    .line 414
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCapabilitySim()I
    .locals 3

    .prologue
    .line 540
    sget-object v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    .line 541
    .local v0, "majorSlot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 543
    return v0
.end method

.method private getIccCardType(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 485
    const-string v0, "Unknown"

    .line 490
    .local v0, "simString":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    const-string v2, "IccCard type: SIM"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x1

    .line 503
    .local v1, "simType":I
    :goto_0
    return v1

    .line 495
    .end local v1    # "simType":I
    :cond_0
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    const-string v2, "IccCard type: USIM"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x2

    .restart local v1    # "simType":I
    goto :goto_0

    .line 499
    .end local v1    # "simType":I
    :cond_1
    const-string v2, "IccCard type: Unknown"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 500
    const/4 v1, 0x0

    .restart local v1    # "simType":I
    goto :goto_0
.end method

.method private static getImsi(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 507
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    aput-object v1, v0, p0

    .line 508
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 509
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v1, v1, p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    aput-object v1, v0, p0

    .line 514
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p0

    if-eqz v0, :cond_1

    .line 515
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    .line 511
    :cond_0
    const-string v0, "Null sUiccController"

    invoke-static {v0}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 512
    const-string v0, ""

    goto :goto_0

    .line 517
    :cond_1
    const-string v0, "Null sIccRecordsInstance"

    invoke-static {v0}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 518
    const-string v0, ""

    goto :goto_0
.end method

.method private static getPreferredRatMode(I)I
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 467
    packed-switch p0, :pswitch_data_0

    .line 477
    const/4 v0, -0x1

    .line 480
    .local v0, "mode":I
    :goto_0
    return v0

    .line 469
    .end local v0    # "mode":I
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_preferred_network_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 471
    .restart local v0    # "mode":I
    goto :goto_0

    .line 473
    .end local v0    # "mode":I
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 475
    .restart local v0    # "mode":I
    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 523
    if-eqz p1, :cond_2

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 524
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 525
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 526
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 528
    const/4 v4, 0x3

    .line 535
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mccmnc":Ljava/lang/String;
    :goto_1
    return v4

    .line 525
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "mccmnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v3    # "mccmnc":Ljava/lang/String;
    :cond_1
    const-string v4, "[getUserType] Not type3 user"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 532
    const/4 v4, 0x1

    goto :goto_1

    .line 534
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_2
    const-string v5, "[getUserType] Null imsi"

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleRadioOn(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 322
    sget v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 323
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->getCapabilitySim()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    .line 325
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setDesiredRatMode(I)V

    .line 326
    return-void
.end method

.method private handleServiceStateChanged(Landroid/telephony/ServiceState;IZ)V
    .locals 8
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;
    .param p2, "slotId"    # I
    .param p3, "isSsDc"    # Z

    .prologue
    const/4 v7, 0x1

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 286
    .local v0, "mdType":I
    if-eqz p3, :cond_2

    .line 287
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    .line 288
    .local v4, "state":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 293
    .local v3, "radioTech":I
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "nwPlmn":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sMajorSlot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioTech: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nwPlmn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 300
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v1

    .line 301
    .local v1, "networkMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "networkMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 302
    sget v5, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    if-ne v5, p2, :cond_1

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 303
    const-string v5, "460"

    invoke-static {v5, v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->isInDesignateRegion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->isLabTestPlmn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 304
    :cond_0
    sget-boolean v5, Lcom/android/internal/telephony/LteDcConfigHandler;->isRoaming:Z

    if-eqz v5, :cond_3

    .line 305
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/internal/telephony/LteDcConfigHandler;->isRoaming:Z

    .line 306
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/LteDcConfigHandler;->setDesiredRatMode(I)V

    .line 318
    :cond_1
    :goto_1
    return-void

    .line 290
    .end local v1    # "networkMode":I
    .end local v2    # "nwPlmn":Ljava/lang/String;
    .end local v3    # "radioTech":I
    .end local v4    # "state":I
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    .line 291
    .restart local v4    # "state":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .restart local v3    # "radioTech":I
    goto/16 :goto_0

    .line 308
    .restart local v1    # "networkMode":I
    .restart local v2    # "nwPlmn":Ljava/lang/String;
    :cond_3
    const-string v5, "Ignore"

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_4
    if-eq v1, v7, :cond_1

    .line 312
    const-string v5, "Not in China -> set RAT=2g"

    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 313
    sput-boolean v7, Lcom/android/internal/telephony/LteDcConfigHandler;->isRoaming:Z

    .line 314
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    goto :goto_1
.end method

.method private handleSimSwitched()V
    .locals 4

    .prologue
    .line 596
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 597
    const-string v2, "3/4G capability turned off"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    const/16 v3, -0x62

    if-ne v2, v3, :cond_2

    .line 599
    const-string v2, "Auto modem selection disabled"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_2
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    const/16 v3, -0x63

    if-ne v2, v3, :cond_3

    .line 601
    const-string v2, "3/4G SIM unknown"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_3
    const-string v2, "Auto modem selection enabled"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3/4G capability in slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 605
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sImsi:[Ljava/lang/String;

    sget v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 607
    const-string v2, "3G slot IMSI not ready"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v1

    .line 611
    .local v1, "oldMdType":I
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleSwitchModem(I)V

    .line 612
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 613
    .local v0, "newMdType":I
    if-ne v1, v0, :cond_0

    .line 614
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->setDesiredRatMode(I)V

    goto :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 10
    .param p1, "toModem"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 620
    const/16 v4, 0x65

    if-ne p1, v4, :cond_1

    .line 621
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    sget v5, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 622
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v3

    .line 623
    .local v3, "userPreferredRat":I
    if-eqz v3, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 625
    :cond_0
    const/4 p1, 0x4

    .line 636
    .end local v3    # "userPreferredRat":I
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v4

    if-ne p1, v4, :cond_7

    .line 637
    if-ne p1, v9, :cond_6

    .line 638
    const-string v4, "Already in SGLTE modem"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 677
    :cond_2
    :goto_1
    return-void

    .line 627
    .restart local v3    # "userPreferredRat":I
    :cond_3
    const/4 p1, 0x7

    goto :goto_0

    .line 629
    .end local v3    # "userPreferredRat":I
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    sget v5, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 630
    const/4 p1, 0x4

    goto :goto_0

    .line 632
    :cond_5
    const-string v4, "IccCard type: Unknown"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :cond_6
    if-ne p1, v8, :cond_2

    .line 640
    const-string v4, "Already in TG modem"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 644
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v4, :cond_9

    .line 645
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_8

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not idle, modem switch not allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 644
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 650
    :cond_9
    if-ne p1, v8, :cond_f

    .line 651
    const-string v4, "Switching to TG modem"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 652
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    .line 653
    .local v2, "slotId":I
    sget v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    const/16 v5, -0x62

    if-ne v4, v5, :cond_a

    .line 654
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->getCapabilitySim()I

    move-result v2

    .line 656
    :cond_a
    if-eq v2, v6, :cond_e

    const/16 v4, -0x63

    if-eq v2, v4, :cond_e

    .line 657
    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v1

    .line 658
    .local v1, "ratToSet":I
    if-ne v1, v6, :cond_d

    .line 659
    const/4 v1, 0x0

    .line 665
    :cond_b
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ratToSet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 666
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkTypeRIL(I)V

    .line 675
    .end local v1    # "ratToSet":I
    .end local v2    # "slotId":I
    :cond_c
    :goto_4
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sLteModemSwitchHandler:Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->switchModem(I)V

    goto/16 :goto_1

    .line 661
    .restart local v1    # "ratToSet":I
    .restart local v2    # "slotId":I
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->contain4gRat(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 662
    const/4 v1, 0x0

    goto :goto_3

    .line 670
    .end local v1    # "ratToSet":I
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capability SIM unavailable -> value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 672
    .end local v2    # "slotId":I
    :cond_f
    if-ne p1, v9, :cond_c

    .line 673
    const-string v4, "Switching to SGLTE modem"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static isInDesignateRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "baseMcc"    # Ljava/lang/String;
    .param p1, "nwPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 547
    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const/4 v1, 0x1

    .line 552
    :cond_0
    return v1
.end method

.method private static isLabTestPlmn(Ljava/lang/String;)Z
    .locals 9
    .param p0, "nwPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 556
    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "nwMcc":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->MCC_TABLE_LAB_TEST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 558
    .local v3, "mcc":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 559
    const-string v7, "Test PLMN"

    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 570
    .end local v3    # "mcc":Ljava/lang/String;
    :goto_1
    return v6

    .line 557
    .restart local v3    # "mcc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v3    # "mcc":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/LteDcConfigHandler;->PLMN_TABLE_LAB_TEST:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 564
    .local v5, "plmn":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 565
    const-string v7, "Test PLMN"

    invoke-static {v7}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 563
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v5    # "plmn":Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 570
    goto :goto_1
.end method

.method public static isNeedToSwitchModem(IILandroid/os/Message;)Z
    .locals 7
    .param p0, "targetNetworkType"    # I
    .param p1, "simId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    .line 680
    const-string v3, "[isNeedToSwitchModem]+"

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 681
    const/4 v2, 0x0

    .line 682
    .local v2, "result":Z
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v1

    .line 683
    .local v1, "mdType":I
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v0

    .line 685
    .local v0, "currentNetworkMode":I
    sget v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    const/16 v4, -0x62

    if-ne v3, v4, :cond_0

    .line 686
    const-string v3, "Auto selection disabled"

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 687
    const/4 v3, 0x0

    .line 733
    :goto_0
    return v3

    .line 697
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentNetworkMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 700
    if-ne v1, v6, :cond_4

    .line 702
    const/4 v3, 0x3

    if-eq p0, v3, :cond_1

    if-nez p0, :cond_2

    .line 703
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-static {v3, v5, p0, p2}, Lcom/android/internal/telephony/LteDcConfigHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;IILandroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 704
    const-string v3, "Change RAT to 3G/2G when modemType is SGLTE"

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 707
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPreferredNetworkTypeRIL(I)V

    .line 708
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 709
    const/4 v2, 0x1

    .line 731
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isNeedToSwitchModem]- result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    move v3, v2

    .line 733
    goto :goto_0

    .line 711
    :cond_3
    const-string v3, "ERROR: modem is not changed!"

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :cond_4
    if-ne v1, v5, :cond_6

    .line 716
    const/16 v3, 0x9

    if-ne p0, v3, :cond_2

    .line 717
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-static {v3, v6, p0, p2}, Lcom/android/internal/telephony/LteDcConfigHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;IILandroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 718
    const-string v3, "Change RAT to 4G/3G/2G when modemType is TG"

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 722
    sget-object v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 723
    const/4 v2, 0x1

    goto :goto_1

    .line 725
    :cond_5
    const-string v3, "ERROR: modem is not changed!!"

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 729
    :cond_6
    const-string v3, "No need to switch modem"

    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 794
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDcCH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void
.end method

.method private setDesiredRatMode(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 329
    const-string v2, "[setDesiredRatMode]+"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 330
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    if-eq v2, v6, :cond_0

    if-eq p1, v6, :cond_0

    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    const/16 v3, -0x63

    if-ne v2, v3, :cond_1

    .line 331
    :cond_0
    const-string v2, "3/4G capability off"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 332
    const-string v2, "[setDesiredRatMode]-"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 334
    :cond_1
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    if-eq v2, p1, :cond_2

    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 337
    const-string v2, "Not 3/4G slot"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 338
    const-string v2, "[setDesiredRatMode]-"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    sget v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    if-ne v2, p1, :cond_5

    .line 342
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sUserType:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 343
    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    .line 344
    const-string v2, "[setDesiredRatMode]-"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sUserType:[I

    sget v3, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    aget v2, v2, v3

    if-nez v2, :cond_4

    .line 347
    const-string v2, "User type unknown"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 348
    const-string v2, "[setDesiredRatMode]-"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    aget v2, v2, p1

    if-nez v2, :cond_5

    .line 352
    const-string v2, "Icc card type unknown"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 353
    const-string v2, "[setDesiredRatMode]-"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 358
    .local v0, "mdType":I
    invoke-static {v5}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v1

    .line 359
    .local v1, "ratToSet":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ratToSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 360
    if-ne v1, v6, :cond_9

    .line 361
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    aget v2, v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 362
    if-ne v0, v7, :cond_7

    .line 363
    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    .line 382
    :cond_6
    :goto_1
    const-string v2, "[setDesiredRatMode]-"

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_7
    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    .line 365
    const/16 v2, 0x9

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    goto :goto_1

    .line 367
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    aget v2, v2, p1

    if-ne v2, v4, :cond_6

    .line 368
    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    goto :goto_1

    .line 371
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->contain4gRat(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 372
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sIccCardType:[I

    aget v2, v2, p1

    if-eq v2, v4, :cond_a

    if-ne v0, v7, :cond_b

    .line 374
    :cond_a
    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    goto :goto_1

    .line 376
    :cond_b
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    goto :goto_1

    .line 379
    :cond_c
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setRatMode(II)V

    goto :goto_1
.end method

.method private setRatMode(II)V
    .locals 4
    .param p1, "ratMode"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    .line 386
    invoke-static {v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v1

    .line 387
    .local v1, "mCurrentNetworkMode":I
    if-ne p1, v1, :cond_0

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRatMode] Already in desired rat mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 392
    .local v0, "eventId":I
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRatMode] Setting slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RAT=2/3/4G auto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x2

    .line 402
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LteDcConfigHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 395
    :cond_2
    if-nez p1, :cond_3

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRatMode] Setting slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RAT=2/3G auto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    goto :goto_1

    .line 398
    :cond_3
    if-ne p1, v3, :cond_1

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRatMode] Setting slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RAT=2G only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 772
    packed-switch p0, :pswitch_data_0

    .line 786
    const-string v0, "Invalid State"

    .line 790
    .local v0, "stateString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 774
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "STATE_POWER_OFF"

    .line 775
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 777
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "STATE_IN_SERVICE"

    .line 778
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 780
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "STATE_OUT_OF_SERVICE"

    .line 781
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 783
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "STATE_EMERGENCY_ONLY"

    .line 784
    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static switchModem(Lcom/android/internal/telephony/CommandsInterface;IILandroid/os/Message;)Z
    .locals 7
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "modemType"    # I
    .param p2, "targetNetworkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 737
    const/4 v3, 0x0

    .line 738
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[switchModem] modemType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 742
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v4, p1, v6}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 743
    invoke-static {p0, p1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 744
    invoke-static {p3, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 745
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 746
    const/4 v3, 0x1

    .line 767
    :cond_0
    :goto_0
    return v3

    .line 749
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    if-nez v4, :cond_2

    .line 750
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getWorldPhone()Lcom/mediatek/common/telephony/IWorldPhone;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    .line 752
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    if-eqz v4, :cond_3

    .line 753
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->getPreferredRatMode(I)I

    move-result v0

    .line 754
    .local v0, "mCurrentNetworkMode":I
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v2

    .line 755
    .local v2, "oldMdType":I
    sget-object v4, Lcom/android/internal/telephony/LteDcConfigHandler;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v4, v0, p2}, Lcom/mediatek/common/telephony/IWorldPhone;->onNetworkModeChanged(II)I

    move-result v1

    .line 756
    .local v1, "newMdType":I
    if-eq v2, v1, :cond_0

    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 758
    invoke-static {p3, v6, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 759
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 760
    const/4 v3, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "mCurrentNetworkMode":I
    .end local v1    # "newMdType":I
    .end local v2    # "oldMdType":I
    :cond_3
    const-string v4, "[switchModem] Fail to get mWorldPhone"

    invoke-static {v4}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 419
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 421
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleRadioOn(I)V

    goto :goto_0

    .line 425
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_RADIO_ON_SGLTE>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleRadioOn(I)V

    goto :goto_0

    .line 429
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleRadioOn(I)V

    goto :goto_0

    .line 433
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_RADIO_ON_SGLTE>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleRadioOn(I)V

    goto :goto_0

    .line 437
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 438
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 439
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=2g fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 446
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 447
    const-string v1, "Set RAT=2/3G auto ok"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=2/3G auto fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_SET_RAT_LTE_GSM_WCDMA>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 454
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 455
    const-string v1, "Set RAT=2/3/4G auto ok"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=2/3/4G auto fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0xa -> :sswitch_0
        0xb -> :sswitch_2
        0x3fc -> :sswitch_1
        0x3fd -> :sswitch_3
    .end sparse-switch
.end method

.method public setModemSelectionMode(II)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 574
    sget-object v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "world_phone_auto_select_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 577
    const-string v1, "Modem Selection <AUTO>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->getCapabilitySim()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    .line 579
    const-string v1, "Storing modem type: 7"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 580
    sget-object v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    const/4 v2, 0x7

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 581
    invoke-direct {p0}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleSimSwitched()V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    const-string v1, "Modem Selection <MANUAL>"

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 584
    const/16 v1, -0x62

    sput v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sMajorSlot:I

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storing modem type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->logd(Ljava/lang/String;)V

    .line 586
    sget-object v1, Lcom/android/internal/telephony/LteDcConfigHandler;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    invoke-interface {v1, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    .line 587
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v0

    .line 588
    .local v0, "currentMd":I
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/LteDcConfigHandler;->handleSwitchModem(I)V

    .line 589
    if-ne v0, p2, :cond_0

    .line 590
    invoke-static {}, Lcom/android/internal/telephony/LteDcConfigHandler;->getCapabilitySim()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LteDcConfigHandler;->setDesiredRatMode(I)V

    goto :goto_0
.end method
