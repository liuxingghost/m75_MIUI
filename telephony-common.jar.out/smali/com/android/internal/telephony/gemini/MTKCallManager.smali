.class public Lcom/android/internal/telephony/gemini/MTKCallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aV:Lcom/android/internal/telephony/gemini/MTKCallManager;


# instance fields
.field aW:Lcom/android/internal/telephony/CallManager;

.field al:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aV:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aW:Lcom/android/internal/telephony/CallManager;

    .line 89
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aV:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-object v0
.end method


# virtual methods
.method public getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->al:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->al:Lcom/android/internal/telephony/Phone;

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aW:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aW:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 127
    return-void
.end method

.method public unregisterPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aW:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aW:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 146
    return-void
.end method
