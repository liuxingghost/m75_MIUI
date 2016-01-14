.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field public static final MODE_0_NONE:I = 0x0

.field public static final MODE_100_TDNC_DUALTALK:I = 0x64

.field public static final MODE_101_FDNC_DUALTALK:I = 0x65

.field public static final MODE_102_WNC_DUALTALK:I = 0x66

.field public static final MODE_103_TNC_DUALTALK:I = 0x67

.field public static final MODE_1_WG_GEMINI:I = 0x1

.field public static final MODE_2_TG_GEMINI:I = 0x2

.field public static final MODE_3_FDD_SINGLE:I = 0x3

.field public static final MODE_4_TDD_SINGLE:I = 0x4

.field public static final MODE_5_WGNTG_DUALTALK:I = 0x5

.field public static final MODE_6_TGNG_DUALTALK:I = 0x6

.field public static final MODE_7_WGNG_DUALTALK:I = 0x7

.field public static final MODE_8_GNG_DUALTALK:I = 0x8

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sExternalMD:I

.field private static sFirstMD:I

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field static final sPreferredCdmaSubscription:I

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;

.field private static sTelephonyMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 68
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 69
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 76
    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    .line 77
    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    .line 78
    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sExternalMD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalModemSlot()I
    .locals 2

    .prologue
    .line 214
    const-string v0, "ril.external.md"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PhoneFactory;->sExternalMD:I

    .line 215
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->sExternalMD:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getFirstMD()I
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    .line 192
    .local v0, "telephonyMode":I
    packed-switch v0, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    return v1

    .line 194
    :pswitch_0
    sget v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    if-gez v1, :cond_0

    .line 195
    const-string v1, "ril.first.md"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    goto :goto_0

    .line 201
    :pswitch_1
    const/4 v1, 0x1

    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    goto :goto_0

    .line 205
    :pswitch_2
    const/4 v1, 0x2

    sput v1, Lcom/android/internal/telephony/PhoneFactory;->sFirstMD:I

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getLteDcPhone()Lcom/android/internal/telephony/gsm/LteDcPhone;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getLteDcPhone()Lcom/android/internal/telephony/gsm/LteDcPhone;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 1
    .param p0, "networkMode"    # I

    .prologue
    .line 113
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public static getTelephonyMode()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    if-gez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    .line 181
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyMode:I

    return v0
.end method

.method public static isDualTalkMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_2

    .line 153
    const-string v2, "mtk_telephony_mode_slot1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    const-string v2, "mtk_telephony_mode_slot2"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public static isEVDODTSupport()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public static isFlightModePowerOffMD()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public static isGeminiSupport()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public static isInternationalRoamingEnabled()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public static isLteDcSupport()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public static isLteSupport()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public static isPsAlwaysAttach()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public static isRadioOffPowerOffMD()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public static isRildReadIMSIEnabled()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimSwitchSupport()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimSwitchSwapped()Z
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->getInstance()Lcom/android/internal/telephony/gemini/SimSwitchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/SimSwitchHandler;->isSimSwitchSwapped()Z

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCommonSlot()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public static isWCDMAPrefered()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public static isWorldPhone()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 91
    const-string v2, "persist.radio.default_sim_mode"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p0, v4}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->makeDefaultPhone(Landroid/content/Context;I)V

    .line 97
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 99
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string v1, "NONE"

    .line 100
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_0
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 1
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
