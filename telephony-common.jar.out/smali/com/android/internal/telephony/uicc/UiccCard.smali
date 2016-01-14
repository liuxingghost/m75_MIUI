.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x66

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x64

.field private static final EVENT_GET_ATR_DONE:I = 0x68

.field private static final EVENT_GET_CDMA_IMSI_DONE:I = 0x11

.field private static final EVENT_GET_GSM_IMSI_DONE:I = 0x10

.field private static final EVENT_IMSI_READY:I = 0xf

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x65

.field private static final EVENT_OPEN_CHANNEL_WITH_SW_DONE:I = 0x69

.field private static final EVENT_SIM_IO_DONE:I = 0x67

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccCard"

.field static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaImsi:Ljava/lang/String;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

.field private mGetImsiDoneFlag:Z

.field private mGsmImsi:Ljava/lang/String;

.field private mGsmUmtsSubscriptionAppIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIccType:Ljava/lang/String;

.field private mImsSubscriptionAppIndex:I

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.uicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.uicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.uicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.uicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 103
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 104
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGetImsiDoneFlag:Z

    .line 481
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 126
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 128
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V

    .line 133
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "simId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 103
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 104
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGetImsiDoneFlag:Z

    .line 481
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating simId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 140
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSimId:I

    .line 141
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V

    .line 146
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;IZ)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "simId"    # I
    .param p5, "isUpdateSiminfo"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z

    .line 96
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 103
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 104
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGetImsiDoneFlag:Z

    .line 481
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating simId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isUpdateSiminfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 153
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSimId:I

    .line 154
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGetImsiDoneFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/uicc/UiccCard;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # [B

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->parseCdmaImsi([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    return-object p1
.end method

.method private adjstMinDigits(II)I
    .locals 1
    .param p1, "digits"    # I
    .param p2, "length"    # I

    .prologue
    .line 774
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 775
    add-int/lit8 p1, p1, 0x6f

    .line 776
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 777
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 778
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 784
    :cond_2
    :goto_0
    return p1

    .line 779
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 780
    add-int/lit8 p1, p1, 0xb

    .line 781
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_4

    add-int/lit8 p1, p1, -0xa

    .line 782
    :cond_4
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_5

    add-int/lit8 p1, p1, -0x64

    :cond_5
    goto :goto_0
.end method

.method private checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "expectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p3, "altExpectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    const/4 v0, -0x1

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 381
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since there are no applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 398
    .end local p1    # "index":I
    :cond_1
    :goto_0
    return p1

    .line 385
    .restart local p1    # "index":I
    :cond_2
    if-gez p1, :cond_3

    move p1, v0

    .line 387
    goto :goto_0

    .line 390
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since it\'s not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 394
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v0, "UiccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 646
    const-string v0, "UiccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 14
    .param p1, "isAdded"    # Z

    .prologue
    const/4 v3, 0x1

    .local v3, "isHotSwapSupported":Z
    const/4 v5, 0x0

    .local v5, "needReboot":Z
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .local v7, "r":Landroid/content/res/Resources;
    const-string v9, ""

    .local v9, "title":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    sget v6, Lcom/android/internal/R$string;->ok:I

    .local v6, "positiveButtonText":I
    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    sget v10, Lcom/android/internal/R$string;->sim_added_title:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    if-eqz v5, :cond_0

    sget v6, Landroid/miui/R$string;->sim_added_reboot_confirm:I

    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCard$1;

    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    .restart local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    sget v13, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v10, v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v5, :cond_1

    sget v10, Lcom/android/internal/R$string;->cancel:I

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v12, 0x7d3

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    if-nez p1, :cond_2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_2
    if-nez v5, :cond_3

    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    .local v8, "t":Ljava/util/Timer;
    new-instance v10, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;

    invoke-direct {v10, p0, v1, v8}, Lcom/android/internal/telephony/uicc/UiccCard$TimerTask;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/app/AlertDialog;Ljava/util/Timer;)V

    const-wide/16 v12, 0x2710

    invoke-virtual {v8, v10, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.SIM_HOT_SWAP"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "is_sim_added"

    invoke-virtual {v2, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcasting intent ACTION_SIM_HOT_SWAP  isAdded: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    const-string v10, "android.permission.READ_PHONE_STATE"

    const/4 v12, -0x1

    invoke-static {v2, v10, v12}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "t":Ljava/util/Timer;
    :cond_3
    monitor-exit v11

    return-void

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_4
    sget v10, Lcom/android/internal/R$string;->sim_removed_title:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    sget v10, Landroid/miui/R$string;->sim_added_reboot_title:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    move v5, p1

    goto/16 :goto_0

    :cond_6
    sget v10, Lcom/android/internal/R$string;->sim_removed_title:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v6    # "positiveButtonText":I
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v9    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private onIccSwap_aosp(Z)V
    .locals 10
    .param p1, "isAdded"    # Z

    .prologue
    .line 437
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 442
    const/4 v2, 0x0

    .line 448
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v2    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 465
    .local v5, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v7, 0x1040457

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, "title":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v7, 0x1040458

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "message":Ljava/lang/String;
    :goto_1
    const v7, 0x1040459

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "buttonTxt":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 476
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7d3

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 477
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 478
    monitor-exit v8

    .line 479
    return-void

    .line 465
    .end local v0    # "buttonTxt":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    const v7, 0x1040454

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 467
    .restart local v6    # "title":Ljava/lang/String;
    :cond_1
    const v7, 0x1040455

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    goto :goto_1

    .line 478
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "title":Ljava/lang/String;
    .restart local v2    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_0
    move-exception v7

    :goto_2
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .end local v2    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v2    # "listener":Landroid/content/DialogInterface$OnClickListener;
    goto :goto_2
.end method

.method private parseCardType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "cdmaIMSI"    # Ljava/lang/String;
    .param p2, "gsmIMSI"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x3

    .line 723
    :goto_0
    return v0

    .line 718
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    const/4 v0, 0x2

    goto :goto_0

    .line 720
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 721
    const/4 v0, 0x1

    goto :goto_0

    .line 723
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCdmaImsi([B)Ljava/lang/String;
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 728
    const/4 v6, 0x0

    .line 729
    .local v6, "mCdmaImsiTmp":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 730
    const/4 v9, 0x0

    .line 767
    :goto_0
    return-object v9

    .line 732
    :cond_0
    const/4 v9, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_2

    const/4 v7, 0x1

    .line 733
    .local v7, "provisioned":Z
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "provisioned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 734
    if-eqz v7, :cond_3

    .line 736
    const/16 v9, 0x9

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v0, v9, v10

    .line 738
    .local v0, "Mcc3digits":I
    const/4 v9, 0x6

    aget-byte v9, p1, v9

    and-int/lit16 v1, v9, 0xff

    .line 740
    .local v1, "Mnc2digits":I
    const/4 v9, 0x2

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v9, v10

    .line 742
    .local v4, "first3digits":I
    const/4 v9, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    shr-int/lit8 v8, v9, 0x6

    .line 744
    .local v8, "second3digits":I
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v3, v9, 0xf

    .line 745
    .local v3, "digit7":I
    const/16 v9, 0x9

    if-le v3, v9, :cond_1

    const/4 v3, 0x0

    .line 747
    :cond_1
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 749
    .local v5, "last3digits":I
    const/4 v9, 0x3

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->adjstMinDigits(II)I

    move-result v0

    .line 750
    const/4 v9, 0x2

    invoke-direct {p0, v1, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->adjstMinDigits(II)I

    move-result v1

    .line 751
    const/4 v9, 0x3

    invoke-direct {p0, v4, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->adjstMinDigits(II)I

    move-result v4

    .line 752
    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->adjstMinDigits(II)I

    move-result v8

    .line 753
    const/4 v9, 0x3

    invoke-direct {p0, v5, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->adjstMinDigits(II)I

    move-result v5

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v2, "builderImsi":Ljava/lang/StringBuilder;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 763
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCdmaImsiTmp present="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    move-object v9, v6

    .line 764
    goto/16 :goto_0

    .line 732
    .end local v0    # "Mcc3digits":I
    .end local v1    # "Mnc2digits":I
    .end local v2    # "builderImsi":Ljava/lang/StringBuilder;
    .end local v3    # "digit7":I
    .end local v4    # "first3digits":I
    .end local v5    # "last3digits":I
    .end local v7    # "provisioned":Z
    .end local v8    # "second3digits":I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 766
    .restart local v7    # "provisioned":Z
    :cond_3
    const-string v9, "mCSimImsiM not present"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 767
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private sanitizeApplicationIndexes()V
    .locals 3

    .prologue
    .line 371
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 373
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 375
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 377
    return-void
.end method


# virtual methods
.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    .line 664
    return-void
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 164
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 165
    :try_start_0
    const-string v4, "Disposing card"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 169
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 168
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 174
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 175
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGetImsiDoneFlag:Z

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_3

    .line 177
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 179
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 180
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 181
    monitor-exit v5

    .line 182
    return-void

    .line 181
    .end local v1    # "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 788
    const-string v6, "UiccCard:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mDestroyed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mLastRadioState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCatService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mAbsentRegistrants: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAbsentRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCardState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUniversalPinState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUiccApplications: length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 806
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v6, v6, v2

    if-nez v6, :cond_1

    .line 807
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 809
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 813
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 816
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_3

    .line 817
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 815
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 822
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_6

    aget-object v0, v1, v3

    .line 823
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_5

    .line 824
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 825
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_5

    .line 826
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 822
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 831
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 832
    return-void
.end method

.method public exchangeApdu(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 654
    return-void
.end method

.method public exchangeSimIo(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 670
    return-void
.end method

.method public exchangeSimIo(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 676
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 362
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 608
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 609
    const/16 v0, 0x8

    .line 610
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 621
    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 624
    :goto_1
    return-object v1

    .line 612
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 613
    goto :goto_0

    .line 615
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 616
    goto :goto_0

    .line 618
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    goto :goto_0

    .line 624
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    monitor-exit v1

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v1

    return-object v0

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCdmaImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'s cdmaImsi is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getGsmImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'s gsmImsi is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 690
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getMySimId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccCardType(): iccType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCardType()I
    .locals 3

    .prologue
    .line 696
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGetImsiDoneFlag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v1, :cond_1

    .line 697
    :cond_0
    const-string v1, "mIccRecords has not been initialized or both IMSI have not been loaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 698
    const/4 v0, -0x1

    .line 703
    .local v0, "cardType":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cardType is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 704
    return v0

    .line 700
    .end local v0    # "cardType":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGsmImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mCdmaImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmImsi:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->parseCardType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "cardType":I
    goto :goto_0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mSimId:I

    return v0
.end method

.method public getNumApplications()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .local v0, "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return v2
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v1

    return-object v0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iccGetAtr(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccGetATR(Landroid/os/Message;)V

    .line 680
    return-void
.end method

.method public iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    .line 685
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 6
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 570
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 572
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v4

    if-nez v4, :cond_3

    .line 573
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getMySimId()I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    .line 576
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApplicationOnIcc(): mIccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 578
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccType:Ljava/lang/String;

    const-string v5, "USIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 579
    monitor-exit v3

    .line 591
    :goto_0
    return v1

    .line 581
    :cond_2
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 586
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 587
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    if-ne v4, p1, :cond_4

    .line 588
    monitor-exit v3

    goto :goto_0

    .line 592
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 586
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 659
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 413
    :cond_0
    monitor-exit v2

    .line 414
    return-void

    .line 413
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForDualImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 423
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 424
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 426
    monitor-exit v2

    .line 428
    return-void

    .line 426
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 419
    monitor-exit v1

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForDualImsiReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    .prologue
    .line 185
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 186
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "Updated after destroyed! Fix me!"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 188
    monitor-exit v5

    .line 265
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 191
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 192
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 193
    iget v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 194
    iget v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 195
    iget v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " applications"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 201
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 203
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v6, v4, v0

    .line 206
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_1

    .line 208
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 200
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_3
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-lt v0, v4, :cond_4

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mUiccApplications["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] dispose"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 217
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x0

    aput-object v6, v4, v0

    goto :goto_2

    .line 264
    .end local v0    # "i":I
    .end local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 220
    .restart local v0    # "i":I
    .restart local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_4
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mUiccApplications["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] update"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    iget-object v6, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 222
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 223
    .local v1, "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v4, v1, :cond_2

    .line 224
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 225
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 231
    .end local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccRecords ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mUiccApplications.length: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-eqz v4, :cond_7

    .line 235
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 245
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sanitizeApplicationIndexes()V

    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 248
    .local v3, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update: radioState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mLastRadioState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 252
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v4, :cond_6

    .line 253
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v6, :cond_9

    .line 254
    const-string v4, "update: notify card removed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 256
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    :cond_6
    :goto_4
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 264
    monitor-exit v5

    goto/16 :goto_0

    .line 239
    .end local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_8

    .line 240
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 242
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_3

    .line 257
    .restart local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v4, v6, :cond_6

    .line 259
    const-string v4, "update: notify card added"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "isUpdateSimInfo"    # Z

    .prologue
    .line 268
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 269
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 270
    const-string v4, "Updated after destroyed! Fix me!"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    .line 271
    monitor-exit v5

    .line 358
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 274
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 275
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 276
    iget v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 277
    iget v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 278
    iget v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 279
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 280
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " applications"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 284
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 286
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 287
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v7, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v6, v4, v0

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 290
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_1

    .line 291
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 283
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    :cond_3
    iget-object v4, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-lt v0, v4, :cond_4

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mUiccApplications["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] dispose"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 298
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 299
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x0

    aput-object v6, v4, v0

    goto :goto_2

    .line 357
    .end local v0    # "i":I
    .end local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 302
    .restart local v0    # "i":I
    .restart local v2    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_4
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mUiccApplications["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] update"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    iget-object v6, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 305
    .local v1, "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v4, v1, :cond_2

    .line 306
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 307
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_2

    .line 308
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 316
    .end local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccRecords ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mUiccApplications.length: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v4, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-eqz v4, :cond_7

    .line 320
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 330
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sanitizeApplicationIndexes()V

    .line 333
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 334
    .local v3, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update: radioState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mLastRadioState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 336
    if-eqz p4, :cond_6

    .line 339
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v4, :cond_6

    .line 340
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v4, v6, :cond_9

    .line 341
    const-string v4, "update: notify card removed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 343
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    :cond_6
    :goto_4
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 357
    monitor-exit v5

    goto/16 :goto_0

    .line 324
    .end local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_8

    .line 325
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 327
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_3

    .line 349
    .restart local v3    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v4, v6, :cond_6

    .line 351
    const-string v4, "update: notify card added"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 352
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
