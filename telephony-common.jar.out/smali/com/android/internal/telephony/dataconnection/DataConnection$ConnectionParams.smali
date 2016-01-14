.class Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionParams"
.end annotation


# instance fields
.field defaultBearerConfig:Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

.field mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

.field mInitialMaxRetry:I

.field mOnCompletedMsg:Landroid/os/Message;

.field mProfileId:I

.field mRilRat:I

.field mTag:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V
    .locals 0
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V

    .line 140
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILcom/android/internal/telephony/dataconnection/DefaultBearerConfig;Landroid/os/Message;)V
    .locals 6
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "defaultBearerConfig"    # Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;
    .param p6, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 144
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->defaultBearerConfig:Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;->copyFrom(Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)V

    .line 146
    return-void
.end method

.method private initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 151
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    .line 152
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    .line 153
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 154
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->defaultBearerConfig:Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

    .line 156
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInitialMaxRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOnCompletedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$000(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
