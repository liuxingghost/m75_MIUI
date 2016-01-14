.class public Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;,
        Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;
    }
.end annotation


# static fields
.field private static final EVENT_CONNECT:I = 0x1f4

.field private static final EVENT_DISCONNECT:I = 0x1f5

.field private static final EVENT_DISCONNECT_DATA_CONNECTION_DONE:I = 0x1fa

.field private static final EVENT_DISCONNECT_WITHOUT_NOTIFICATION:I = 0x1f8

.field private static final EVENT_MODIFY:I = 0x1f6

.field private static final EVENT_MODIFY_DATA_CONNECTION_DONE:I = 0x1fb

.field private static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x1f9

.field private static final EVENT_UPDATE:I = 0x1f7

.field public static final REASON_BEARER_ABORT:Ljava/lang/String; = "abort"

.field public static final REASON_BEARER_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final REASON_BEARER_DEACTIVATION:Ljava/lang/String; = "deactivation"

.field public static final REASON_BEARER_MODIFICATION:Ljava/lang/String; = "modification"

.field protected static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

.field private mCid:I

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mDdcac:Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

.field private mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    .line 41
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 56
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 63
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->clearSettings()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->quit()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method private clearSettings()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clear()V

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    .line 219
    return-void
.end method

.method private ddclog(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate][GDDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 5
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 226
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 227
    .local v1, "onCompletedMsg":Landroid/os/Message;
    if-nez v1, :cond_0

    .line 228
    const-string v2, "notifyConnectionCompleted and no complete message"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 232
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 237
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p2, v2, :cond_1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConnectionCompleted success property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 239
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 241
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    if-ne v2, v3, :cond_2

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConnectionCompleted success with failcause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 243
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConnectionCompleted with cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 246
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v4, "Setup dedicate bearer failed"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 5
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 257
    if-nez p1, :cond_1

    .line 258
    const-string v2, "notifyDisconnectCompleted and no param, not to send complete message"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 261
    .local v1, "onCompletedMsg":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 265
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 268
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p2, v2, :cond_2

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDisconnectCompleted success property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 270
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 272
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDisconnectCompleted with cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 273
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v4, "Deactivate dedicate bearer failed"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "dataCallStates":[Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    if-eqz v2, :cond_2

    .line 161
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    .line 162
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    aput-object v2, v0, v4

    .line 167
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->FAIL:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 168
    .local v1, "result":Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 169
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v2

    iget-object v1, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 170
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 171
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_3

    .line 174
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 187
    :cond_1
    :goto_1
    return-object v1

    .line 163
    .end local v1    # "result":Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    :cond_2
    if-eqz p1, :cond_0

    .line 164
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    move-object v0, v2

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    goto :goto_0

    .line 176
    .restart local v1    # "result":Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    :cond_3
    aget-object v2, v0, v4

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 177
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v2, v3, :cond_1

    .line 178
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 179
    const-string v2, "updateDedicateBearerProperty get exception but no fail cause, convert to UNKNOWN"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_4
    aget-object v2, v0, v4

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->failCause:I

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 184
    aget-object v2, v0, v4

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->cid:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    goto :goto_1
.end method

.method private updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    .locals 3
    .param p1, "newState"    # Ljava/lang/Object;

    .prologue
    .line 191
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 192
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    if-nez p1, :cond_0

    .line 213
    .end local p1    # "newState":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 195
    .restart local p1    # "newState":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 197
    instance-of v1, p1, [Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    check-cast p1, [Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    .end local p1    # "newState":Ljava/lang/Object;
    check-cast p1, [Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->setProperties([Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 202
    :goto_1
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    if-eq v1, v2, :cond_2

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDedicateBearerProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .restart local p1    # "newState":Ljava/lang/Object;
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    .end local p1    # "newState":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->setProperties(Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    goto :goto_1

    .line 207
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->oldProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDedicateBearerProperty old LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->oldProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDedicateBearerProperty new LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 211
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    goto :goto_0
.end method


# virtual methods
.method public bringUp(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 66
    const/16 v0, 0x1f4

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 67
    return-void
.end method

.method public disconnect(Landroid/os/Message;)V
    .locals 2
    .param p1, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DedicateDataConnection disconnect [ddcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 86
    const/16 v0, 0x1f5

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 87
    return-void
.end method

.method public getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    return-object v0
.end method

.method public getDedicateDataConnectionAc()Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDdcac:Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    return v0
.end method

.method public modify(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 71
    const/16 v0, 0x1f6

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 72
    return-void
.end method

.method protected onAbort(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 152
    const/16 v1, 0x1fa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onAbort, to abort the activation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 154
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->reason:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->abortSetupDataCall(ILjava/lang/String;Landroid/os/Message;)V

    .line 156
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V
    .locals 7
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DedicateDataConnection onConnect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 111
    const/16 v0, 0x1f9

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 112
    .local v6, "msg":Landroid/os/Message;
    iput-object p1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->interfaceId:I

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->signalingFlag:Z

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setupDedicateDataCall(IIZLcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;Landroid/os/Message;)V

    .line 114
    return-void
.end method

.method protected onDisconnect(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 131
    const/16 v1, 0x1fa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect, no obj parameter and send response msg directly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 136
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v1, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect with parameter, deactivate the connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 138
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->reason:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDedicateDataCall(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 140
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect with non-DedicateConnectionParam, send response msg directly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    const-string v2, "deactivate by network"

    check-cast p1, Landroid/os/Message;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;Landroid/os/Message;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    invoke-static {v0, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 146
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect but unknown parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onModification(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V
    .locals 5
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection onModification ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 118
    const/16 v1, 0x1fb

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->modifyDataCall(ILcom/android/internal/telephony/dataconnection/QosStatus;Lcom/android/internal/telephony/dataconnection/TftStatus;Landroid/os/Message;)V

    .line 121
    return-void
.end method

.method protected onUpdate(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    .locals 3
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection onUpdate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 125
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;->cid:I

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    .line 126
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;

    .line 127
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DedicateDataCallState$SetupResult;
    return-object v0
.end method

.method public setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 91
    return-void
.end method

.method public setDedicateDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;)V
    .locals 0
    .param p1, "ddcac"    # Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->mDdcac:Lcom/android/internal/telephony/dataconnection/DedicateDataConnectionAc;

    .line 95
    return-void
.end method

.method public tearDown(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 75
    const/16 v0, 0x1f5

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 76
    return-void
.end method

.method public update(Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;Landroid/os/Message;)V
    .locals 2
    .param p1, "dedicateDataCallState"    # Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 80
    const/16 v0, 0x1f7

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 81
    return-void
.end method
