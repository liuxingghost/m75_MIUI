.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field mAdditionalInfo:[B

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field mDestinationId:I

.field mEvent:I

.field mIncludeAdditionalInfo:Z

.field mOneShot:Z

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field mSourceId:I

.field mUsersConfirm:Z

.field mUsersInput:Ljava/lang/String;

.field mUsersMenuSelection:I

.field mUsersYesNoSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 68
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 58
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 29
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 30
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo([B)V
    .locals 1
    .param p1, "additionalInfo"    # [B

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 101
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .param p1, "confirm"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 50
    return-void
.end method

.method public setDestinationId(I)V
    .locals 0
    .param p1, "dId"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 89
    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 81
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 38
    return-void
.end method

.method public setOneShot(Z)V
    .locals 0
    .param p1, "shot"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 109
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 34
    return-void
.end method

.method public setSourceId(I)V
    .locals 0
    .param p1, "sId"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 77
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .param p1, "yesNo"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 46
    return-void
.end method
