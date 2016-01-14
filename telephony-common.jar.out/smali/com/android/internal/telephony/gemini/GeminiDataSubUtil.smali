.class public Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    }
.end annotation


# static fields
.field private static h:Z


# instance fields
.field private g:[Z

.field private i:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private j:Lcom/android/internal/telephony/Phone;

.field private k:[Lcom/android/internal/telephony/Phone;

.field private l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

.field private m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

.field protected mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private n:[Landroid/os/Handler;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:[I

.field private q:[I

.field private r:Landroid/os/Handler;

.field private s:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 9

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x2

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-array v1, v2, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    .line 111
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    .line 112
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    .line 113
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    .line 114
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Landroid/os/Handler;

    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    .line 121
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    .line 122
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    .line 124
    new-instance v1, Lcom/android/internal/telephony/gemini/d;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gemini/d;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:Landroid/os/Handler;

    .line 187
    new-instance v1, Lcom/android/internal/telephony/gemini/b;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gemini/b;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 252
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 253
    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    aput-object p2, v2, v0

    const/4 v1, 0x1

    aput-object p3, v2, v1

    aput-object p4, v2, v3

    const/4 v1, 0x3

    aput-object p5, v2, v1

    .line 256
    check-cast p2, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    move v1, v0

    .line 258
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_1

    .line 259
    add-int/lit8 v3, v1, 0x1

    .line 260
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v2, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    aput-object v0, v4, v1

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v4, Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GeminiDC-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v4, v0, v1

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->start()V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    new-instance v4, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v5, v5, v1

    invoke-direct {v4, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;I)V

    aput-object v4, v0, v1

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    aput-object v3, v0, v1

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, v1

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Landroid/os/Handler;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect success: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4, v8}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 276
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 277
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x5

    invoke-interface {v0, v3, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    invoke-direct {v1, p0, v8}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/d;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:Landroid/content/BroadcastReceiver;

    .line 288
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    return-void

    .line 105
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 121
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 122
    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    if-ne p1, v0, :cond_0

    .line 329
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 327
    goto :goto_0

    :cond_1
    move v0, v1

    .line 329
    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private b(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionFromSetting()I

    move-result v0

    .line 340
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C1: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 348
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C2: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 356
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C3: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 364
    const-string v0, "UAPP_C4: active Phone is default phone"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()I
    .locals 3

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionFromSetting()I

    move-result v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS: defaultSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C1: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 610
    :goto_0
    return v0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS: threeGSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C2: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 603
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C3: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    :cond_3
    const-string v0, "DCDS_C4: no available SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 610
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private c(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 372
    :goto_0
    return-object v0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAPP:Invaild simId=  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logw(Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    return-object v0
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 929
    if-ltz p1, :cond_0

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    return-object v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    return-object v0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    return-object v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionFromSetting()I

    move-result v0

    return v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 3

    .prologue
    .line 953
    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_setting"

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 960
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1015
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1023
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1019
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void
.end method


# virtual methods
.method public dialUpCsd(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dialUpCsd(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 635
    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType():type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",call Gemini version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 641
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    .line 642
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 653
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 655
    if-eq v0, v1, :cond_4

    .line 656
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 661
    :goto_1
    return v0

    .line 645
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 646
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 651
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    goto :goto_0

    .line 658
    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public declared-synchronized disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 885
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableApnTypeGemini():type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",powerOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    aget-boolean v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->disconnectSync(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT]disableDnsCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    goto :goto_0
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableDnsCheck(Z)V

    .line 729
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x63

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",call Gemini version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v1

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    const-string v0, "Do not update the data setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    if-eq v1, v0, :cond_0

    .line 629
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 9

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    .line 791
    monitor-enter p0

    .line 793
    if-eq p2, v8, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 795
    :cond_0
    const-string v1, "EATG:SIM_NONE or Invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    :goto_0
    monitor-exit p0

    return v0

    .line 799
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gemini enableApnTypeGemini():type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",simId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",powerOff="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    aget-boolean v4, v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v4, v3

    .line 801
    :goto_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v4, v2, :cond_7

    .line 803
    if-ne p2, v4, :cond_3

    .line 801
    :cond_2
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 807
    :cond_3
    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 808
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v5

    .line 809
    if-eqz v5, :cond_5

    array-length v2, v5

    if-eqz v2, :cond_5

    move v2, v3

    .line 810
    :goto_3
    array-length v6, v5

    if-ge v2, v6, :cond_5

    .line 811
    const-string v6, "default"

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v6

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v6, v7, :cond_4

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnTypeGemini():Peer SIM still have non default active APN type: activeApnTypes["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 810
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 823
    :cond_5
    :try_start_2
    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 824
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    const-string v5, "default"

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v5, :cond_2

    .line 825
    const-string v2, "enableApnTypeGemini(), check if need disableApnTypeGemini(default)"

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 826
    const-string v2, "default"

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnTypeGemini(), disableApnTypeGemini, peerSimId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 831
    goto/16 :goto_0

    .line 833
    :cond_6
    const-string v2, "enableApnTypeGemini(), peer default apn is already disconnected"

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 839
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v0

    .line 840
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v2, v2, v0

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnTypeGemini(): activeModem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current_use_sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request_use_gprs_sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 845
    if-ne p2, v2, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleDeactingSync()Z

    move-result v3

    if-nez v3, :cond_8

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 848
    const-string v0, "enableApnTypeGemini(): current_use_sim_id equals request SIM ID."

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 852
    :cond_8
    if-ne v2, v8, :cond_9

    .line 853
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aput p2, v1, v0

    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    const/4 v3, -0x1

    aput v3, v1, v0

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableApnTypeGemini(): current SIM is NONE or IDLE, currentSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 858
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnTypeGemini(): current SIM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is active."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 859
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aget v3, v3, v0

    if-eq p2, v3, :cond_a

    .line 860
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 862
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aput p2, v3, v0

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->cleanupAllConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 868
    goto/16 :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    const-string v0, "[DT] getActiveApn"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 522
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 486
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v2

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    .line 490
    if-nez v2, :cond_1

    .line 491
    if-eqz v0, :cond_0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT] 1. getActiveApnTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-object v0

    .line 495
    :cond_0
    const-string v0, "[DT] 2. getActiveApnTypes=null"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x0

    goto :goto_0

    .line 499
    :cond_1
    if-eqz v0, :cond_2

    .line 500
    array-length v3, v2

    .line 501
    array-length v4, v0

    .line 502
    add-int v1, v3, v4

    new-array v1, v1, [Ljava/lang/String;

    .line 503
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT] 3. getActiveApnTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move-object v0, v1

    .line 506
    goto :goto_0

    .line 508
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT] 4. getActiveApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move-object v0, v2

    .line 509
    goto :goto_0

    .line 513
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getApnForType==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 393
    :goto_0
    return-object v0

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 540
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "[DT] getCurrentDataConnectionList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 545
    :goto_0
    return-object v1

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    goto :goto_0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 445
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 448
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    .line 451
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getDataActivityState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 534
    const-string v0, "[DT] getDataCallList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 537
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 761
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataCallList(Landroid/os/Message;)V

    .line 762
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3

    .prologue
    .line 430
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 433
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    .line 437
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3

    .prologue
    .line 399
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 402
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getDataConnectionState==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-object v0

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 724
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 550
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    :cond_0
    const-string v0, "[DT] getDataRoamingEnabled: true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 560
    :goto_0
    return v0

    .line 556
    :cond_1
    const-string v1, "[DT] getDataRoamingEnabled: false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 690
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]:getDnsServers, apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 695
    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_0
    :goto_0
    return-object v0

    .line 701
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 528
    const-string v0, "[DT] getPdpContextList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPdpContextList(Landroid/os/Message;)V

    .line 531
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPdpContextList(Landroid/os/Message;)V

    .line 758
    return-void
.end method

.method public isDataConnectivityEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 665
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    :goto_0
    return v1

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    goto :goto_0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 674
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    :cond_0
    const-string v0, "[DT]:isDataConnectivityPossible=true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 685
    :goto_0
    return v0

    .line 681
    :cond_1
    const-string v1, "[DT]:isDataConnectivityPossible=false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 415
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    :cond_0
    const-string v0, "[DT]isDataConnectivityPossible: true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 425
    :goto_0
    return v0

    .line 421
    :cond_1
    const-string v1, "[DT]isDataConnectivityPossible: false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 900
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 471
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    :cond_0
    const-string v0, "[DT]isDnsCheckDisabled=true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 481
    :goto_0
    return v0

    .line 477
    :cond_1
    const-string v1, "[DT]isDnsCheckDisabled=false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isGprsDetached(I)Z
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    const/4 v0, 0x1

    .line 923
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleDeactingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const/4 v0, 0x1

    .line 915
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPsActive(I)Z
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v1

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataActivity()V
    .locals 3

    .prologue
    .line 707
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataActivity()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 710
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 711
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    goto :goto_0
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 909
    return-void
.end method

.method public registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 991
    return-void
.end method

.method public resetAsRadioOff(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 293
    move v1, v2

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_7

    .line 294
    shl-int v0, v6, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    if-ne p1, v5, :cond_2

    .line 296
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v3

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v0, v0, v3

    if-ne v1, v0, :cond_1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetAsRadioOff: reset SIM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " data connection [mode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", allowDetach="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->isAllowDetach()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 303
    if-ne p1, v5, :cond_3

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToIdleState()V

    .line 317
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aget v0, v0, v3

    if-ne v1, v0, :cond_2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetAsRadioOff: reset request SIM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aput v5, v0, v3

    .line 293
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 305
    :cond_3
    shl-int v0, v6, v1

    and-int/2addr v0, p1

    if-nez v0, :cond_5

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->isAllowDetach()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToIdleState()V

    goto :goto_1

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->isAllowDetach()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 314
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->cleanupAllConnection()V

    goto :goto_1

    .line 323
    :cond_7
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 2

    .prologue
    .line 565
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT] setDataRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 573
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()V

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method public setGeminiDataConnStateToActingState(I)V
    .locals 3

    .prologue
    .line 979
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transit to Acting state for simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToActingState()V

    .line 981
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)I

    move-result v0

    .line 982
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aput p1, v1, v0

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeModem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current_use_sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPsAttach(I)V
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V

    .line 1004
    return-void
.end method

.method public unregisterForDetached(ILandroid/os/Handler;)V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->unregisterForIdle(Landroid/os/Handler;)V

    .line 995
    return-void
.end method
