.class public Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MD_TYPE_FDD:I = 0x64

.field public static final MD_TYPE_LTG:I = 0x6

.field public static final MD_TYPE_LTNG:I = 0x7

.field public static final MD_TYPE_LWG:I = 0x5

.field public static final MD_TYPE_TDD:I = 0x65

.field public static final MD_TYPE_TG:I = 0x4

.field public static final MD_TYPE_UNKNOWN:I = 0x0

.field public static final MD_TYPE_WG:I = 0x3

.field private static R:I

.field private static S:[Lcom/android/internal/telephony/CommandsInterface;

.field private static ac:Landroid/content/Context;

.field private static ak:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->ak:Lcom/android/internal/telephony/Phone;

    .line 66
    sput-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->ac:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    .line 68
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->S:[Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init modem type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->ak:Lcom/android/internal/telephony/Phone;

    .line 74
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->ak:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->ak:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->ac:Landroid/content/Context;

    .line 79
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 80
    sget-object v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->S:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_0
    const-string v0, "sPhone = null"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public static getActiveModemType()I
    .locals 2

    .prologue
    .line 205
    const-string v0, "ril.active.md"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    .line 208
    sget v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    return v0
.end method

.method public static isLteDcMode()Z
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->getActiveModemType()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    .line 219
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 220
    const-string v0, "LteDcMode"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 249
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteMSH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public static modemToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 230
    const-string v0, "WG"

    .line 245
    :goto_0
    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 232
    const-string v0, "TG"

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 234
    const-string v0, "FDD CSFB"

    goto :goto_0

    .line 235
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 236
    const-string v0, "TDD CSFB"

    goto :goto_0

    .line 237
    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    .line 238
    const-string v0, "SGLTE"

    goto :goto_0

    .line 239
    :cond_4
    if-nez p0, :cond_5

    .line 240
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 242
    :cond_5
    const-string v0, "Invalid modem type"

    goto :goto_0
.end method

.method public static reloadModem(I)V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->S:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 172
    return-void
.end method

.method public static reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    const-string v0, "[reloadModem]"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 176
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 177
    const-string v0, "Radio unavailable, can not reload modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 181
    const/16 v0, 0xe

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 183
    const/16 v0, 0xf

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 185
    const/16 v0, 0x10

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 187
    const/16 v0, 0x11

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 188
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 189
    const/16 v0, 0x12

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 191
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid modem type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setModemType(I)V
    .locals 2

    .prologue
    .line 212
    const-string v0, "ril.active.md"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sput p0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setModemType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static switchModem(I)V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocolSim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 95
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 96
    sget-object v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->S:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v1, v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->S:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    goto :goto_0
.end method

.method public static switchModem(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 103
    const-string v0, "[switchModem]"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 104
    sget v0, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->R:I

    if-ne p1, v0, :cond_5

    .line 105
    if-ne p1, v3, :cond_1

    .line 106
    const-string v0, "Already in WG modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-ne p1, v4, :cond_2

    .line 108
    const-string v0, "Already in TG modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    if-ne p1, v5, :cond_3

    .line 110
    const-string v0, "Already in FDD CSFB modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    if-ne p1, v6, :cond_4

    .line 112
    const-string v0, "Already in TDD CSFB modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 114
    const-string v0, "Already in SGLTE modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_5
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_6

    .line 119
    const-string v0, "Radio unavailable, can not switch modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_6
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_9

    .line 122
    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->isLteDcMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 123
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_9

    .line 126
    const-string v0, "Radio off, can not switch modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_7
    const-string v0, "lteDcMgr = null"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_8
    const-string v0, "Radio off, can not switch modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_9
    if-ne p1, v3, :cond_a

    .line 139
    const/16 v0, 0x9

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    .line 153
    :goto_1
    invoke-static {p1}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->setModemType(I)V

    .line 156
    const-string v0, "Broadcast intent ACTION_LTE_MD_TYPE_CHANGE"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_LTE_MD_TYPE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v1, "mdType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    sget-object v1, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->ac:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_a
    if-ne p1, v4, :cond_b

    .line 141
    const/16 v0, 0xa

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_1

    .line 142
    :cond_b
    if-ne p1, v5, :cond_c

    .line 143
    const/16 v0, 0xb

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_1

    .line 144
    :cond_c
    if-ne p1, v6, :cond_d

    .line 145
    const/16 v0, 0xc

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_1

    .line 146
    :cond_d
    const/4 v0, 0x7

    if-ne p1, v0, :cond_e

    .line 147
    const/16 v0, 0xd

    invoke-interface {p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_1

    .line 149
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid modem type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
