.class public Lcom/android/internal/telephony/gemini/MTKPhoneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static T:Lcom/android/internal/telephony/Phone;

.field private static U:Lcom/android/internal/telephony/CommandsInterface;

.field private static V:Lcom/android/internal/telephony/CommandsInterface;

.field private static W:Lcom/android/internal/telephony/CommandsInterface;

.field private static X:Lcom/android/internal/telephony/CommandsInterface;

.field private static Y:Z

.field private static Z:Lcom/android/internal/telephony/PhoneNotifier;

.field private static aa:Lcom/android/internal/telephony/PhoneNotifier;

.field private static ab:Landroid/os/Looper;

.field private static ac:Landroid/content/Context;

.field private static ad:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static ae:I

.field static af:I

.field static final ag:Z

.field private static ah:Lcom/android/internal/telephony/gsm/LteDcPhone;

.field private static ai:Lcom/android/internal/telephony/LteDcConfigHandler;

.field private static mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 95
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 96
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    .line 97
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->W:Lcom/android/internal/telephony/CommandsInterface;

    .line 98
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->X:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Y:Z

    .line 108
    const/16 v0, 0x9

    sput v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->af:I

    .line 112
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteDcSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ag:Z

    .line 114
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    .line 115
    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ai:Lcom/android/internal/telephony/LteDcConfigHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;III)V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 417
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    .line 419
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 420
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 422
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 423
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 426
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 427
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 430
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    .line 431
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 432
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 433
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 434
    new-instance v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 437
    new-instance v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v2, v3, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 438
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating EVDO GeminiPhone with CDMA as Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;III)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 451
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode_2"

    sget v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->af:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 454
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Mode 2 set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 456
    new-instance v3, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    .line 471
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 472
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 473
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 475
    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 478
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v3, v4, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 480
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating GSM GeminiPhone with default phone at Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 482
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 483
    return-void

    .line 458
    :cond_0
    const-string v0, "com.mtk.3G_SWITCH"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 459
    const-string v0, "gsm.3gswitch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 460
    :goto_1
    const-string v4, "3G_SIM_ID"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 461
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initiate 3G Sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-nez v0, :cond_2

    .line 464
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 465
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 459
    goto :goto_1

    .line 467
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 468
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_0
.end method

.method private static f()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 530
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 532
    monitor-exit v1

    return-object v0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 550
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 551
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 554
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 556
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 557
    monitor-exit v3

    .line 560
    :goto_2
    return-object v0

    .line 552
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 554
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 559
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 560
    monitor-exit v3

    goto :goto_2

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 537
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 539
    monitor-exit v1

    return-object v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 566
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 567
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    .line 570
    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    .line 572
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 573
    monitor-exit v3

    .line 576
    :goto_2
    return-object v0

    .line 568
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v2, v0

    goto :goto_0

    .line 570
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, v0

    goto :goto_1

    .line 575
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 576
    monitor-exit v3

    goto :goto_2

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLteDcConfigHandler()Lcom/android/internal/telephony/LteDcConfigHandler;
    .locals 2

    .prologue
    .line 592
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ai:Lcom/android/internal/telephony/LteDcConfigHandler;

    if-nez v0, :cond_0

    .line 593
    const-string v0, "PHONE"

    const-string v1, "sLteDcConfigHandler is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ai:Lcom/android/internal/telephony/LteDcConfigHandler;

    return-object v0
.end method

.method public static getLteDcPhone()Lcom/android/internal/telephony/gsm/LteDcPhone;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ah:Lcom/android/internal/telephony/gsm/LteDcPhone;

    return-object v0
.end method

.method public static getLteDcPhone(I)Lcom/android/internal/telephony/gsm/LteDcPhone;
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ah:Lcom/android/internal/telephony/gsm/LteDcPhone;

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 492
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 509
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 502
    goto :goto_0

    .line 507
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3

    .prologue
    .line 544
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getWorldPhone()Lcom/mediatek/common/telephony/IWorldPhone;
    .locals 2

    .prologue
    .line 600
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    if-nez v0, :cond_0

    .line 601
    const-string v0, "PHONE"

    const-string v1, "mWorldPhone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    return-object v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 13

    .prologue
    .line 129
    const-class v9, Lcom/android/internal/telephony/Phone;

    monitor-enter v9

    .line 130
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f()Z

    .line 131
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Y:Z

    if-nez v1, :cond_7

    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ab:Landroid/os/Looper;

    .line 133
    sput-object p0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ac:Landroid/content/Context;

    .line 135
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ab:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 140
    :cond_0
    :try_start_1
    const-string v1, "persist.service.conn.looper"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/LogPrinter;

    const/4 v3, 0x3

    const-string v4, "PHONE"

    invoke-direct {v2, v3, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    .line 147
    :goto_0
    const/4 v2, 0x0

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 153
    :try_start_2
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string v4, "com.android.internal.telephony"

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :goto_1
    if-nez v2, :cond_8

    .line 170
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    .line 172
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 173
    const/4 v1, 0x7

    sput v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->af:I

    .line 176
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->af:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 178
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Mode set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    const-string v1, "gsm.mmdc.network.mode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_3
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gemini Network Mode set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v3

    .line 192
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cdma Subscription set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "com.mtk.3G_SWITCH"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 201
    const-string v1, "ril.simswitch.mode"

    const/4 v5, 0x3

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_a

    const/4 v1, 0x1

    .line 208
    :goto_2
    const-string v5, "3G_SIM_ID"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 209
    const-string v1, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initiate 3G Sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v2}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v1

    .line 212
    const/4 v5, 0x1

    if-ne v1, v5, :cond_d

    .line 213
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 214
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 215
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 216
    const-string v1, "PHONE"

    const-string v2, "Creating GSMPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ag:Z

    if-eqz v1, :cond_4

    .line 220
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const-string v2, "LteDc"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(Ljava/lang/String;)V

    .line 221
    new-instance v2, Lcom/android/internal/telephony/gsm/LteDcPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getLteDcManager()Lcom/android/internal/telephony/LteDcManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ah:Lcom/android/internal/telephony/gsm/LteDcPhone;

    .line 222
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->confirmPsSwitch(IILandroid/os/Message;)V

    .line 384
    :cond_4
    :goto_3
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 387
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 389
    :try_start_4
    const-class v1, Lcom/mediatek/common/telephony/IWorldPhone;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IWorldPhone;

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    .line 390
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorldPhoneWrapper created mWorldPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 396
    :cond_5
    :goto_4
    :try_start_5
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ag:Z

    if-eqz v1, :cond_6

    .line 397
    new-instance v1, Lcom/android/internal/telephony/LteDcConfigHandler;

    invoke-direct {v1}, Lcom/android/internal/telephony/LteDcConfigHandler;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ai:Lcom/android/internal/telephony/LteDcConfigHandler;

    .line 399
    :cond_6
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Y:Z

    .line 403
    :cond_7
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ad:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 406
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ad:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->updateRegistryCellLocation()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 411
    :goto_5
    :try_start_7
    monitor-exit v9

    .line 412
    return-void

    .line 154
    :catch_0
    move-exception v2

    .line 155
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 160
    :cond_8
    const/4 v2, 0x3

    if-le v1, v2, :cond_9

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory probably already running"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 164
    :cond_9
    const-wide/16 v2, 0x7d0

    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 201
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 203
    :cond_b
    :try_start_9
    const-string v1, "gsm.3gswitch"

    const/4 v5, 0x1

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 224
    :cond_d
    const/4 v5, 0x2

    if-ne v1, v5, :cond_e

    .line 225
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 226
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 227
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 228
    const-string v1, "PHONE"

    const-string v2, "Creating CDMAPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 229
    :cond_e
    const/4 v5, 0x4

    if-ne v1, v5, :cond_4

    .line 230
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    .line 231
    new-instance v7, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 232
    new-instance v8, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 234
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 236
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 238
    const-string v1, "persist.radio.default_sim"

    const/4 v4, -0x1

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 239
    const/4 v4, -0x1

    if-ne v1, v4, :cond_f

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    if-nez v1, :cond_12

    .line 242
    const/4 v1, 0x0

    .line 247
    :goto_6
    const-string v4, "persist.radio.default_sim"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_f
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default Phone as SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " during first boot-up (EVDO DT)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p0, v1, v3, v2}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a(Landroid/content/Context;III)V

    .line 373
    :cond_10
    :goto_7
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    move-result-object v2

    .line 375
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 376
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 377
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_11

    .line 378
    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 379
    :cond_11
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4

    .line 380
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    goto/16 :goto_3

    .line 245
    :cond_12
    const/4 v1, 0x1

    goto :goto_6

    .line 254
    :cond_13
    const-string v1, "persist.radio.default_sim"

    const/4 v4, -0x1

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 255
    const/4 v4, -0x1

    if-ne v1, v4, :cond_14

    .line 257
    const/4 v1, 0x0

    .line 258
    const-string v4, "persist.radio.default_sim"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_14
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Default Phone as SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " during first boot-up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p0, v1, v3, v2}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b(Landroid/content/Context;III)V

    goto :goto_7

    .line 267
    :cond_15
    const-string v1, "persist.radio.default_sim"

    const/4 v5, -0x1

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 268
    const/4 v1, -0x1

    if-ne v6, v1, :cond_16

    .line 270
    const/4 v6, 0x0

    .line 271
    const-string v1, "persist.radio.default_sim"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_16
    const-string v1, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set Default Phone as SIM"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " during first boot-up"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v5, v1, [I

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v10, "preferred_network_mode_2"

    sget v11, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->af:I

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 293
    packed-switch v4, :pswitch_data_0

    .line 301
    :goto_8
    const-string v10, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sim3G="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " GNetwork Mode 2 set to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v4, Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    invoke-direct {v4, p0, v2, v3, v10}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 305
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    .line 319
    :goto_9
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 320
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 322
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v10, v1, [Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 325
    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->Z:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v12, 0x0

    invoke-direct {v2, p0, v4, v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v10, v1

    .line 327
    const/4 v1, 0x1

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->aa:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v12, 0x1

    invoke-direct {v2, p0, v4, v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v10, v1

    .line 330
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 331
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-direct {v4, v11}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 335
    :cond_17
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_19

    .line 336
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    aget v2, v5, v2

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->W:Lcom/android/internal/telephony/CommandsInterface;

    .line 338
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->W:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 340
    const/4 v1, 0x2

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->W:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x2

    invoke-direct {v2, p0, v4, v7, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v10, v1

    .line 343
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 344
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-direct {v4, v11}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v11, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v1, v2, v4, v11, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 348
    :cond_18
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    .line 349
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x3

    aget v2, v5, v2

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->X:Lcom/android/internal/telephony/CommandsInterface;

    .line 351
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->X:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 353
    const/4 v1, 0x3

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->X:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v8, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    aput-object v2, v10, v1

    .line 356
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v3, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v4, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v5, 0x2

    aget-object v5, v10, v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v5, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v11, 0x3

    aget-object v11, v10, v11

    invoke-direct {v5, v11}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->T:Lcom/android/internal/telephony/Phone;

    .line 361
    :cond_19
    const-string v1, "PHONE"

    const-string v2, "Creating GeminiPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v1, :cond_10

    .line 364
    const/4 v1, 0x0

    :goto_b
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_1e

    .line 365
    if-eq v1, v2, :cond_1a

    .line 366
    aget-object v3, v10, v2

    aget-object v4, v10, v1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhones(Lcom/android/internal/telephony/gsm/GSMPhone;I)V

    .line 364
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 295
    :pswitch_0
    const/4 v1, 0x1

    .line 296
    goto/16 :goto_8

    .line 298
    :pswitch_1
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 307
    :cond_1b
    const/4 v1, 0x0

    :goto_c
    sget v10, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v10, :cond_1d

    .line 308
    if-ne v4, v1, :cond_1c

    .line 309
    aput v2, v5, v1

    .line 307
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 311
    :cond_1c
    const/4 v10, 0x1

    aput v10, v5, v1

    goto :goto_d

    .line 315
    :cond_1d
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->U:Lcom/android/internal/telephony/CommandsInterface;

    .line 316
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    aget v2, v5, v2

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->V:Lcom/android/internal/telephony/CommandsInterface;

    goto/16 :goto_9

    .line 363
    :cond_1e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 391
    :catch_2
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 407
    :catch_3
    move-exception v1

    goto/16 :goto_5

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeDefaultPhone(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 124
    sput p1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->ae:I

    .line 125
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 126
    return-void
.end method
